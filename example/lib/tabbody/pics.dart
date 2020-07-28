import 'package:flutter/material.dart';

class PictureTab extends StatelessWidget {
  final String url;
  PictureTab(this.url);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        physics: BouncingScrollPhysics(),
        children: List.generate(30, (index) {
          return ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                url,
                height: 150.0,
                width: 100.0,
                fit: BoxFit.fill,
              ));
        }),
      ),
    );
  }
}
