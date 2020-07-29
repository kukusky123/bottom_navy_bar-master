import 'package:flutter/material.dart';

class ShowImage extends StatelessWidget {
  final String url;
  ShowImage(this.url);
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "pic",
      child: Container(
        child: Image(image: NetworkImage(url)),
      ),
    );
  }
}
