import 'package:example/Pages/ChatList/SliverDelegate/HeaderDeligate.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class ChatList_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      SliverPersistentHeader(
          pinned: true,
          floating: true,
          delegate: HeaderDeligate(
              closedHeight: 30, openHeight: 40, toolBarHeight: 110)),
      SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
          return Container(
            height: 50,
            child: Text("Text no. " + index.toString()),
          );
        }, childCount: 40),
      )
    ]);
  }
}
