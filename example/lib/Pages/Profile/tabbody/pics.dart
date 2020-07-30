import 'package:example/Pages/Profile/tabbody/miniwidgets/ShowImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class PictureTab extends StatefulWidget {
  final List<String> urls;
  PictureTab({this.urls});

  @override
  _PictureTabState createState() => _PictureTabState();
}

class _PictureTabState extends State<PictureTab>
    with SingleTickerProviderStateMixin {
  int gridCount = 3;
  double startX = 0;
  double endX = 0;
  var color = Colors.black;
  @override
  Widget build(BuildContext context) {
    //AnimationLimiter is used to animate on build or return on this page
    return AnimationLimiter(
      //ANIMATED SWITCHER IS USED TO ANIMATED ON STATE CHANGE
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        child: GridView.count(
          key: ValueKey(gridCount),
          crossAxisCount: gridCount,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          physics: BouncingScrollPhysics(),
          children: List.generate(widget.urls.length, (index) {
            return AnimationConfiguration.staggeredGrid(
                position: index,
                columnCount: gridCount,
                child: ScaleAnimation(
                    duration: (Duration(milliseconds: 500)),
                    child: AnimatedSwitcher(
                      duration: Duration(seconds: 10),
                      child: GestureDetector(
                        onHorizontalDragStart: (details) =>
                            startX = details.localPosition.dx,
                        onHorizontalDragUpdate: (details) =>
                            endX = details.localPosition.dx,
                        onHorizontalDragEnd: (details) => calculation(details),
                        child: GestureDetector(
                          onTap: () => heroTransgender(index, context),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                widget.urls[index],
                                height: double.infinity,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              )),
                        ),
                      ),
                    )));
          }),
        ),
      ),
    );
  }

  heroTransgender(int index, BuildContext context) {
    Navigator.push(context, _createRoute(index));
  }

  calculation(DragEndDetails details) {
    var diff = startX - endX;
    int sens = 100;
    print(diff);
    if (diff > sens) {
      print("Swiping left");
      setState(() {
        if (gridCount <= 1) {
          return;
        } else {
          gridCount -= 1;
        }
      });
    } else if (diff < -sens) {
      print("Swiping Right");
      setState(() {
        if (gridCount >= 5) {
          return;
        } else {
          gridCount += 1;
        }
      });
    }
  }

//MaterialRoute give us the default material route. Learn more about custom route
  Route _createRoute(int index) {
    /*
    Working
    We create our custom navigationRoute to specify the way we want to transition
    1.we return a pageRouteBuilder.
    2. TransitionBiulder takes in all the necessary parameters and then
    we can customise it. But we have to return a transition
    3.PageBuilder will be responsible for building the page*/
    return PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 300),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          animation =
              CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
          return ScaleTransition(
            scale: animation,
            child: child,
            alignment: Alignment.center,
          );
        },
        pageBuilder: (context, animation, secondaryAnimation) {
          return ShowImage(
            index,
            urls: widget.urls,
          );
        });
  }
}
