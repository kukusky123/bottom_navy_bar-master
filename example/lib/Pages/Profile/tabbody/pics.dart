import 'package:example/Pages/Profile/tabbody/miniwidgets/ShowImage.dart';
import 'package:flutter/material.dart';

class PictureTab extends StatefulWidget {
  final List<String> urls;
  PictureTab({this.urls});

  @override
  _PictureTabState createState() => _PictureTabState();
}

class _PictureTabState extends State<PictureTab> {
  int gridCount = 3;
  double startX = 0;
  double endX = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragStart: (details) => startX = details.localPosition.dx,
      onHorizontalDragUpdate: (details) => endX = details.localPosition.dx,
      onHorizontalDragEnd: (details) => calculation(details),
      child: GridView.count(
        crossAxisCount: gridCount,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        physics: BouncingScrollPhysics(),
        children: List.generate(widget.urls.length, (index) {
          return GestureDetector(
            onTap: () => heroTransgender(widget.urls[index], context),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  widget.urls[index],
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.fill,
                )),
          );
        }),
      ),
    );
  }

  heroTransgender(String url, BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ShowImage(url)));
  }

  horizontalSwipe(DragUpdateDetails details, int sens) {
    if (details.delta.dx > sens) {
      //Right swipe
      print("LrightEft swipe");
      setState(() {
        if (gridCount >= 5)
          return;
        else
          gridCount = gridCount + 1;
      });
    } else if (details.delta.dx < -sens) {
      //left swipe
      print("LEft swipe");
      setState(() {
        if (gridCount <= 1) {
          return;
        } else {
          gridCount = gridCount - 1;
        }
      });
    }
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
