import 'package:example/topdeck.dart';
import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TopDeck(
          userName: 'hooker',
          bio: 'free bow jobs',
          known: 300,
          knows: 3000,
        ),
        Container(
          height: 56,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                Icons.dashboard,
                color: Colors.grey,
                size: 28,
              ),
              Icon(
                Icons.image,
                color: Colors.grey,
                size: 28,
              ),
              Icon(
                Icons.play_circle_outline,
                color: Colors.grey,
                size: 28,
              ),
            ],
          ),
        ),
        Container(
          child: SingleChildScrollView(
            child: GridView(gridDelegate: null),
          ),
        )
      ],
    );
  }
}
