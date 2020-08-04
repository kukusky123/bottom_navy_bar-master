import 'dart:ui';

import 'package:example/Pages/Feed/miniwidget/Modal/miniWidget/Tile.dart';
import 'package:flutter/material.dart';

class CommentModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      resizeToAvoidBottomPadding: true,
      body: Column(
        children: <Widget>[
          //ATTENTION!!!!!!!!!!!!!--ListViews dont have heightset by default so we need to specify it in order to use it inside a column
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return CommentTile(
                  desc: "Sup niger",
                  name: "No name",
                );
              },
            ),
          ),
          Container(
            child: TextField(
              selectionWidthStyle: BoxWidthStyle.max,
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
