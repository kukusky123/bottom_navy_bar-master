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
    return AnimationLimiter(
      child: GridView.count(
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
                  )));
        }),
      ),
    );
  }

  heroTransgender(int index, BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ShowImage(
                  index,
                  urls: widget.urls,
                )));
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
}
