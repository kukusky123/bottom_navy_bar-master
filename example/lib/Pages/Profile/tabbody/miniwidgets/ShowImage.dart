import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ShowImage extends StatefulWidget {
  final int index;
  final List<String> urls;
  ShowImage(this.index, {this.urls});

  @override
  _ShowImageState createState() => _ShowImageState();
}

class _ShowImageState extends State<ShowImage> {
  Offset
      animationStart; //Used in tween to set the starting position of Slide transition
  Offset
      animationEnd; //Used in Tween to set the ending position of the Slide Transition
  int index;
  @override
  void initState() {
    animationStart = Offset(0.0, 0.0);
    animationEnd = Offset(0.0, 0.0);
    super.initState();
    index = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Center(
              child: AnimatedSwitcher(
                transitionBuilder: (child, animation) {
                  //Custom tween
                  Tween<Offset> customTween =
                      Tween<Offset>(begin: animationStart, end: animationEnd);

                  //Custom animation
                  Animation<Offset> custom = customTween.animate(animation);
                  return SlideTransition(
                    textDirection: TextDirection.ltr,
                    position: custom,
                    child: child,
                  );
                },
                duration: Duration(milliseconds: 100),
                child: PhotoView(
                  key: ValueKey(index),
                  imageProvider: NetworkImage(widget.urls[index]),
                  basePosition: Alignment.center,
                  minScale: 0.2,
                  tightMode: true,
                  maxScale: 3.0,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: index <= 0 ? null : () => prevImagee(context)),
                IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: index >= widget.urls.length - 1
                        ? null
                        : () => nextImage(context)),
              ],
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {},
                    iconSize: 40,
                  ),
                  IconButton(
                    icon: Icon(Icons.comment),
                    onPressed: () {},
                    iconSize: 40,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  prevImagee(BuildContext context) {
    animationStart = Offset(1.0, 0.0);

    setState(() {
      index -= 1;
    });
  }

  nextImage(BuildContext context) {
    animationStart = Offset(-1.0, 0.0);
    setState(() {
      index += 1;
    });
  }
}
