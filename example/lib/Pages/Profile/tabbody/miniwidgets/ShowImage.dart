import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ShowImage extends StatelessWidget {
  final String url;
  final String tag;
  ShowImage(this.url, this.tag);
  @override
  Widget build(BuildContext context) {
    return PhotoView(
      imageProvider: NetworkImage(url),
      basePosition: Alignment.center,
      minScale: 0.3,
      tightMode: true,
      maxScale: 3.0,
    );
  }

  dragDown(DragEndDetails dg, BuildContext context) {
    print(dg.primaryVelocity);
    if (dg.primaryVelocity > 300.0 || dg.primaryVelocity < -300.0) {
      Navigator.pop(context);
    }
  }
}
