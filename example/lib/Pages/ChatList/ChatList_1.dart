import 'package:example/Pages/ChatList/SliverDelegate/HeaderDeligate.dart';
import 'package:example/Pages/ChatList/miniWidgets/chatCard.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class ChatList_1 extends StatelessWidget {
  final List<String> names = [
    "Kuku",
    "John",
    "Jennifer",
    "YeetMaster",
    "Akash",
    "Peter Parker",
    "Panner",
    "Stranger",
    "Sir",
    "Rifleyield",
    "Karen",
    "Soter Jom"
  ];
  final List<String> texts = [
    "Where is my moonayy???",
    "Hi it's John here",
    "But what were you doing in my bathroom?",
    "Join me at 69 pm.",
    "NO idea but okay.",
    "It's pizza time rn sorry.",
    "It's pruce Banner GoshDammit",
    "I can smell your hair as you scroll your phone.",
    "Don't forget to pay your fee",
    "This gun will cost you 96rs ",
    "I HAVE THE RIGHT TO NOT WEAR A MASK!!!!",
    "She is supposed to be Sober rn but idk might not be."
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      SliverPersistentHeader(
          pinned: true,
          floating: true,
          delegate: HeaderDeligate(
              closedHeight: 20, openHeight: 30, toolBarHeight: 100)),
      SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
          return ChatCard(
              text: names[index],
              secondaryText: texts[index],
              image: "",
              time: "",
              isMessageRead: false);
        }, childCount: names.length),
      )
    ]);
  }
}
