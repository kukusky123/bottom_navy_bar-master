import 'package:flutter/material.dart';

class PostPicMini extends StatelessWidget {
  final Function onDoubleTap;
  final String link;
  PostPicMini({this.link, this.onDoubleTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: onDoubleTap,
      child: ClipRRect(
        child: Image(image: NetworkImage(link)),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
    );
  }
}
