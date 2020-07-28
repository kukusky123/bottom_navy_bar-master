import 'package:example/tabbody/Link.dart';
import 'package:example/tabbody/pics.dart';
import 'package:example/topdeck.dart';
import 'package:flutter/material.dart';

//STATELESS IMPLEMENTATION
class Profilepage extends StatefulWidget {
  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage>
    with SingleTickerProviderStateMixin {
  TabController tc;
  final String url =
      "https://i.imgur.com/XzrRxP6_d.webp?maxwidth=728&fidelity=grand";

  List<Widget> texts;
  void initState() {
    super.initState();
    texts = new List();
    texts.add(Text("First text baby"));
    texts.add(Text("2nd text baby"));

    texts.add(Text("3rd text baby"));

    texts.add(Text("45thh text baby"));

    texts.add(Text("7hjy text baby"));

    texts.add(Text("kuku text baby"));

    texts.add(Text("7gd text baby"));

    texts.add(Text("69 text baby"));

    texts.add(Text("sky text baby"));
    tc = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TopDeck(
          userName: 'Amelia',
          bio: 'VFX artist',
          known: 9076,
          knows: 545,
        ),
        TabBar(
            controller: tc,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.amberAccent,
            tabs: [
              Icon(
                Icons.photo_size_select_actual,
                color: Colors.black,
                size: 28,
              ),
              Icon(
                Icons.link,
                color: Colors.black,
                size: 28,
              ),
              Icon(
                Icons.dashboard,
                color: Colors.black,
                size: 28,
              )
            ]),
        TabBarView(
            controller: tc,
            children: [PictureTab(url), LinkTab(), PictureTab(url)])
      ],
    );
  }
}
