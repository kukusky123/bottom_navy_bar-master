import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

import 'customNavASLibrary.dart';

class BottomNav extends StatefulWidget {
  final int currentIndex;
  BottomNav({this.currentIndex});
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex;
  @override
  void initState() {
    super.initState();
    currentIndex = widget.currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      selectedIndex: currentIndex,
      showElevation: true,
      itemCornerRadius: 10,
      curve: Curves.easeInCirc,
      onItemSelected: (index) => setState(() {
        currentIndex = index;
      }),
      items: [
        BottomNavyBarItem(
          icon: Icon(Icons.account_circle),
          title: Text('Account'),
          activeColor: Colors.black,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(LineAwesomeIcons.search_plus),
          title: Text('Search'),
          activeColor: Colors.black,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(LineAwesomeIcons.home),
          title: Text('Home'),
          activeColor: Colors.black,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.change_history),
          title: Text(
            'Activity',
          ),
          activeColor: Colors.black,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.add),
          title: Text('Post'),
          activeColor: Colors.black,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
