import 'package:example/topdeck.dart';
import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  List<Widget> texts = new List();
  @override
  Widget build(BuildContext context) {
    texts.add(Text("First text baby"));
    texts.add(Text("2nd text baby"));

    texts.add(Text("3rd text baby"));

    texts.add(Text("45thh text baby"));

    texts.add(Text("7hjy text baby"));

    texts.add(Text("kuku text baby"));

    texts.add(Text("7gd text baby"));

    texts.add(Text("69 text baby"));

    texts.add(Text("sky text baby"));

    return Column(
      children: <Widget>[
        TopDeck(
          userName: 'hooker',
          bio: 'free bow jobs',
          known: 300,
          knows: 3000,
        ),
        Container(
          color: Colors.black,
          height: 56,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                Icons.dashboard,
                color: Colors.white,
                size: 28,
              ),
              Icon(
                Icons.image,
                color: Colors.white,
                size: 28,
              ),
              Icon(
                Icons.play_circle_outline,
                color: Colors.white,
                size: 28,
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.topCenter,
          height: 100,
          child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(texts.length, (index) {
                return Image(
                    image: NetworkImage(
                        "https://i.ytimg.com/vi/msCO9CLZfT0/hqdefault.jpg"));
              })),
        )
      ],
    );
  }
}
