import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

import 'customNavASLibrary.dart';

class BottomNav extends StatelessWidget {
  final Function onItemSelect;
  final int currentIndex;
  BottomNav({this.currentIndex, this.onItemSelect});
  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      selectedIndex: currentIndex,
      showElevation: true,
      itemCornerRadius: 10,
      curve: Curves.easeInCirc,
      onItemSelected: (index) => onItemSelect(index),
      items: [
        BottomNavyBarItem(
          icon: Icon(LineAwesomeIcons.inbox),
          title: Text(
            'DM',
          ),
          activeColor: Colors.black,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://i.pinimg.com/236x/1b/31/6d/1b316d31b5a7c16ad5ea696e8d6f73de.jpg",
            ),
            radius: 15,
          ),
          title: Text('Profile'),
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
          icon: Icon(LineAwesomeIcons.search_plus),
          title: Text('Search'),
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
