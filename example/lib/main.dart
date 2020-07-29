import 'package:example/ProfileBody/Body/TabbarView.dart';
import 'package:example/ProfileBody/appbar/Appbar.dart';
import 'package:flutter/material.dart';

import 'NavigationBar/customNav.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  List<String> urlForPics;
  int currentIndex = 0;
  TabController tc;
  final String url =
      "https://i.imgur.com/XzrRxP6_d.webp?maxwidth=728&fidelity=grand";

  @override
  void initState() {
    super.initState();
    tc = new TabController(length: 3, vsync: this);
    urlForPics = new List();
    urlForPics.add(
        "https://i.pinimg.com/236x/1b/31/6d/1b316d31b5a7c16ad5ea696e8d6f73de.jpg");
    urlForPics.add("https://i.redd.it/elbqu2n8lo221.jpg");
    urlForPics.add("https://i.redd.it/u3an57q50se21.jpg");
    urlForPics.add("https://www.ginx.tv/uploads/ezh5gj4u8aaloug.jpg");

    urlForPics.add(
        "https://dxt.resized.co/dexerto/eyJkYXRhIjoie1widXJsXCI6XCJodHRwczpcXFwvXFxcL2ltYWdlcy5kZXhlcnRvLmNvbVxcXC91cGxvYWRzXFxcLzIwMjBcXFwvMDVcXFwvMDYxOTM2NTBcXFwvcG9raW1hbmUtaW5zdGFncmFtLXNlbGZpZS1tYXktNi0yMDIwLmpwZ1wiLFwid2lkdGhcIjpcIlwiLFwiaGVpZ2h0XCI6XCJcIixcImRlZmF1bHRcIjpcImh0dHBzOlxcXC9cXFwvaW1hZ2VzLmRleGVydG8uY29tXFxcL3VwbG9hZHNcXFwvMjAxOVxcXC8xMVxcXC8xMTIxNDk0M1xcXC9wbGFjZWhvbGRlci5qcGdcIixcIm9wdGlvbnNcIjpbXX0iLCJoYXNoIjoiYTFkNzRlMWQ4ZWNjOGQwYjU5MjZmMDQxYjNmMjJmZjZiNjFjNWU3MCJ9/pokimane-instagram-selfie-may-6-2020.jpg");
    urlForPics.add(
        "https://cdn.earlygame.com/uploads/images/_imageBlock/Pokimane-signs-exclusive-contract-with-Twitch.jpg?mtime=20200320104244&focal=none&tmtime=20200722164642");
    urlForPics.add(
        "https://s.yimg.com/lo/api/res/1.2/ugSfi7uZ8g3eXSlGDEht3w--/YXBwaWQ9YXBlY21lZGlhO3NtPTE7dz04MDA-/https://media.zenfs.com/en-US/digital_trends_973/7e20d04aeda976dbb680501596735d8c");
    urlForPics
        .add("https://pics.wikifeet.com/Imane-Pokimane-Anys-Feet-5092785.jpg");

    urlForPics.add(
        "https://i.pinimg.com/236x/d7/a9/86/d7a986f330de6507426a938605360754.jpg");
    urlForPics.add(
        "https://cdn.gamzo.in/files/media/2020/07/11150307/pokimane-instagram.jpg");
    urlForPics.add(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSNfowf7lBZDokRwJ7VU35vCTt3ExZFiYARHA&usqp=CAU");
    urlForPics.add(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRKyH727LvcNc1IbLtFPQNiDJv3XMln91YsJA&usqp=CAU");
    urlForPics.add(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRBXi1KDABB3KbbR46Up4MjR8Qlq3VhjXiwWw&usqp=CAU");
  }

  @override
  void dispose() {
    tc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ProfileAppbar(
          tc: tc,
          preferredSize: Size.fromHeight(205),
        ),
        body: ProfileBody(
          tc: tc,
          url: urlForPics,
        ),
        bottomNavigationBar: BottomNav(
          currentIndex: 0,
        ));
  }
}
/**
 * We are going to have list of appbar for different nav button
 * List of body for different bodies based on app bar
 * 
 * And DMs are going to just pop
 * 
 * 
 * 
 * no1. Test nav button navigation
 */
