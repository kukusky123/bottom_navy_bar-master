import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ShowImage extends StatelessWidget {
  final int index;
  final List<String> urls;
  ShowImage(this.index, {this.urls});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Center(
              child: PhotoView(
                imageProvider: NetworkImage(urls[index]),
                basePosition: Alignment.center,
                minScale: 0.2,
                tightMode: true,
                maxScale: 3.0,
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
                    onPressed: index >= urls.length - 1
                        ? null
                        : () => nextImage(context)),
              ],
            )
          ],
        ),
      ),
    );
  }

  prevImagee(BuildContext context) {
    int prevIndex = index - 1;
    Navigator.pop(context);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ShowImage(
                  prevIndex,
                  urls: urls,
                )));
  }

  nextImage(BuildContext context) {
    int prevIndex = index + 1;
    Navigator.pop(context);

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ShowImage(
                  prevIndex,
                  urls: urls,
                )));
  }

  //TODO: Transition when swiping
  //TODO: Load 30 pics at once not all of it for optimisation and when scrolled down load the rest and remove prevously one by one
  //Same for image viewing
}
