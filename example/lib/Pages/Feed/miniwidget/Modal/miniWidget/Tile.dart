import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class CommentTile extends StatefulWidget {
  final String desc;
  final String name;

  CommentTile({this.desc, this.name});

  @override
  _CommentTileState createState() => _CommentTileState();
}

class _CommentTileState extends State<CommentTile> {
  int _maxLines = 2;
  var _likeColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return _buider();
  }

  Widget _buider() {
    return Container(
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[],
                      ),
                      _descriptionBuilder(widget.desc)
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _descriptionBuilder(String yourText) {
    return LayoutBuilder(builder: (context, size) {
      final span = TextSpan(
        text: yourText,
      );
      final tp = TextPainter(
          text: span, maxLines: 2, textDirection: TextDirection.ltr);
      tp.layout(maxWidth: size.maxWidth);

      if (tp.didExceedMaxLines) {
        //More than 2 line
        return Row(
          children: <Widget>[
            Flexible(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://pm1.narvii.com/7405/fe45b583aca11df902b5a6752c7c5ef34626b543r1-212-236v2_00.jpg'),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                          child: Text(
                            widget.name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 2, 0),
                          child: Text(
                            widget.desc,
                            maxLines: _maxLines,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            IconButton(
                                icon: Icon(LineAwesomeIcons.heartbeat),
                                color: _likeColor,
                                onPressed: () {
                                  setState(() {
                                    if (_likeColor == Colors.black)
                                      _likeColor = Colors.blueGrey;
                                    else
                                      _likeColor = Colors.black;
                                  });
                                }),
                            IconButton(
                              icon: Icon(LineAwesomeIcons.reply),
                              onPressed: () {},
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
                icon: Icon(LineAwesomeIcons.arrow_down),
                onPressed: () {
                  setState(() {
                    if (_maxLines == 2)
                      _maxLines = 100;
                    else
                      _maxLines = 2;
                  });
                })
          ],
        );
      } else {
        return Row(
          children: <Widget>[
            Flexible(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://pm1.narvii.com/7405/fe45b583aca11df902b5a6752c7c5ef34626b543r1-212-236v2_00.jpg'),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                          child: Text(
                            widget.name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 2, 0),
                          child: Text(
                            widget.desc,
                            maxLines: _maxLines,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            IconButton(
                                icon: Icon(LineAwesomeIcons.heartbeat),
                                color: _likeColor,
                                onPressed: () {
                                  setState(() {
                                    if (_likeColor == Colors.black)
                                      _likeColor = Colors.blueGrey;
                                    else
                                      _likeColor = Colors.black;
                                  });
                                }),
                            IconButton(
                              icon: Icon(LineAwesomeIcons.reply),
                              onPressed: () {},
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Icon(
                LineAwesomeIcons.arrow_down,
                color: Colors.white,
              ),
            ),
          ],
        );
      }
    });
  }
}
