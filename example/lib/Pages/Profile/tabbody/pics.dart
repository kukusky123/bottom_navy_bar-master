import 'package:example/Pages/Profile/tabbody/miniwidgets/ShowImage.dart';
import 'package:flutter/material.dart';

class PictureTab extends StatelessWidget {
  final List<String> urls;
  PictureTab({this.urls});
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 10,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      physics: BouncingScrollPhysics(),
      children: List.generate(urls.length, (index) {
        String tag = index.toString() + "pic";
        return GestureDetector(
          onTap: () => heroTransgender(urls[index], context, tag),
          child: Hero(
            tag: tag,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  urls[index],
                  height: 150.0,
                  width: 100.0,
                  fit: BoxFit.fill,
                )),
          ),
        );
      }),
    );
  }

  heroTransgender(String url, BuildContext context, String tag) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ShowImage(url, tag)));
  }
}
