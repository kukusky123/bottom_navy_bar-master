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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) => horizontalSwipe(details, 30),
      child: GridView.count(
        crossAxisCount: gridCount,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        physics: BouncingScrollPhysics(),
        children: List.generate(widget.urls.length, (index) {
          String tag = index.toString() + "pic";
          return GestureDetector(
            onTap: () => heroTransgender(widget.urls[index], context, tag),
            child: Hero(
              tag: tag,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    widget.urls[index],
                    height: 150.0,
                    width: 100.0,
                    fit: BoxFit.fill,
                  )),
            ),
          );
        }),
      ),
    );
  }

  heroTransgender(String url, BuildContext context, String tag) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ShowImage(url, tag)));
  }

  horizontalSwipe(DragUpdateDetails details, int sens) {
    if (details.delta.dx > sens) {
      //Right swipe
      print("LrightEft swipe");
      setState(() {
        if (gridCount > 10) return;
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
}
