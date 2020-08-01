import 'package:example/Pages/Feed/miniwidget/Modal/CommentModal.dart';
import 'package:flutter/material.dart';

class BottomSection extends StatefulWidget {
  final String name;
  final String link;
  BottomSection({this.name, this.link});

  @override
  _BottomSectionState createState() => _BottomSectionState();
}

class _BottomSectionState extends State<BottomSection> {
  var _hearColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
      child: AnimatedSwitcher(
        duration: Duration(seconds: 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(widget.link),
                    radius: 15,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    widget.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (_hearColor == Colors.black) {
                        _hearColor = Colors.blueGrey;
                      } else {
                        _hearColor = Colors.black;
                      }
                    });
                  },
                  child: Icon(
                    Icons.favorite,
                    color: _hearColor,
                    size: 35,
                  ),
                ),
                //COMMENT BUTTON

                GestureDetector(
                  onTap: () => _showComment(context),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 10, 0),
                    child: Icon(
                      Icons.comment,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  _showComment(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return CommentModal();
        });
  }
}
