import 'package:example/topdeck.dart';
import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  List<Widget> texts = new List();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
          userName: 'Amelia',
          bio: 'VFX artist',
          known: 9076,
          knows: 545,
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
          height: size.height * 0.60 - 115,
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
            physics: BouncingScrollPhysics(),
            children: List.generate(12, (index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/images/photo_" + index.toString() + ".jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
