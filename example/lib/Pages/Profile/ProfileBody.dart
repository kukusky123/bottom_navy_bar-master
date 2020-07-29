import 'package:example/Pages/Profile/tabbody/Document.dart';
import 'package:example/Pages/Profile/tabbody/Link.dart';
import 'package:example/Pages/Profile/tabbody/pics.dart';
import 'package:flutter/material.dart';

class ProfileBody extends StatefulWidget {
  final TabController tc;
  final List<String> url;
  ProfileBody({this.tc, this.url});
  @override
  _ProfileBodyState createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: widget.tc,
        children: [
          PictureTab(
            urls: widget.url,
          ),
          LinkTab(),
          DocTab()
        ]);
  }
}
