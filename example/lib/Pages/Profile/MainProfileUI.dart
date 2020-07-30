import 'package:example/Pages/Profile/ProfileBio.dart';
import 'package:example/Pages/Profile/tabbody/miniwidgets/topdeck.dart';
import 'package:flutter/material.dart';

import 'ProfileBody.dart';

class ProfileMain extends StatefulWidget {
  final List<String> urlList;
  ProfileMain({this.urlList});
  @override
  _ProfileMainState createState() => _ProfileMainState();
}

class _ProfileMainState extends State<ProfileMain>
    with SingleTickerProviderStateMixin {
  int _profilIndex = 1; //Used to determine which widget to show
  TabController tc;
  List<String> urlList;
  @override
  void initState() {
    super.initState();
    tc = new TabController(length: 3, vsync: this);
    urlList = widget.urlList;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          TopDeck(
            bio: "Biolo",
            known: 56,
            knows: 889,
            userName: "Poki",
            onExpandBio: expandBio,
          ),
          widgetDecider(0),
          widgetDecider(1),

//
        ],
      ),
    );
  }

  expandBio() {
    print("Expand bio ");
    setState(() {
      if (_profilIndex == 0) {
        _profilIndex = 1;
      } else if (_profilIndex == 1) {
        _profilIndex = 0;
      }
    });
  }

  widgetDecider(int widget) {
    print("Profile Tab");
    if (widget == 0) {
      if (_profilIndex == 0)
        return TabBar(
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
            ]);
      else if (_profilIndex == 1) {
        return ProfileBio();
      }
      print("Bio Tab");
    } else if (widget == 1) {
      if (_profilIndex == 0) {
        return Expanded(
          child: ProfileBody(
            tc: tc,
            url: urlList,
          ),
        );
      } else if (_profilIndex == 1) return Container();
    }
  }
}
