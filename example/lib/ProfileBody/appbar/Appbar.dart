import 'package:example/ProfileBody/tabbody/miniwidgets/topdeck.dart';
import 'package:flutter/material.dart';

class ProfileAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final TabController tc;
  ProfileAppbar({this.tc, this.preferredSize});
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.black,
        bottom: PreferredSize(
          // preferredSize: Size.fromHeight(145),
          preferredSize: preferredSize,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TopDeck(
                userName: 'Amelia',
                bio: 'VFX artist',
                known: 9076,
                knows: 545,
              ),
              SafeArea(
                bottom: true,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TabBar(
                      controller: tc,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.amberAccent,
                      tabs: [
                        Icon(
                          Icons.photo_size_select_actual,
                          color: Colors.white,
                          size: 28,
                        ),
                        Icon(
                          Icons.link,
                          color: Colors.white,
                          size: 28,
                        ),
                        Icon(
                          Icons.dashboard,
                          color: Colors.white,
                          size: 28,
                        )
                      ]),
                ),
              ),
            ],
          ),
        ));
  }
}
