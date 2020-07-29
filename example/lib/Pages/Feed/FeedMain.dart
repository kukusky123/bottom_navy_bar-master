import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
          color: Colors.lightBlueAccent,
          child: Placeholder(
            color: Colors.orange,
          )),
    );
  }
}
