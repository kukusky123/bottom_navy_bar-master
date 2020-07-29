import 'package:flutter/material.dart';

class PictureTab extends StatelessWidget {
  final List<String> urls;
  PictureTab({this.urls});
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      physics: BouncingScrollPhysics(),
      children: List.generate(urls.length, (index) {
        return ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              urls[index],
              height: 150.0,
              width: 100.0,
              fit: BoxFit.fill,
            ));
      }),
    );
  }
}
