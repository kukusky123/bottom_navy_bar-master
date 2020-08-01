import 'package:flutter/material.dart';

class Posts extends StatefulWidget {
  final String link;
  final String desc;
  final String likes;
  final String name;
  Posts({this.desc, this.likes, this.link, this.name});
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  int maxLine = 2;
  IconData showmoreIcon = Icons.keyboard_arrow_down;
  bool isExpanded;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          child: Image(image: NetworkImage(widget.link)),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 10, 0),
                    child: SizedBox(
                      height: 25,
                      width: 25,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(widget.link),
                      ),
                    ),
                  ),
                  Text(
                    widget.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.favorite,
                    color: Colors.black,
                    size: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 10, 0),
                    child: Icon(
                      Icons.comment,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        test(widget.desc)
      ],
    );
  }

  Widget test(String yourText) {
    return LayoutBuilder(builder: (context, size) {
      final span = TextSpan(
        text: yourText,
      );
      final tp = TextPainter(
          text: span, maxLines: 2, textDirection: TextDirection.ltr);
      tp.layout(maxWidth: size.maxWidth);

      if (tp.didExceedMaxLines) {
        //More than 1 line
        return Row(children: <Widget>[
          Flexible(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text(
                  yourText,
                  maxLines: maxLine,
                ),
              ),
            ),
          ),
          IconButton(
              icon: Icon(showmoreIcon),
              onPressed: () {
                if (isExpanded == null) {
                  isExpanded = false;
                }
                setState(() {
                  if (isExpanded) {
                    isExpanded = false;
                    //Expanded
                    maxLine = 2;
                    showmoreIcon = Icons.keyboard_arrow_down;
                  } else {
                    //Not expanded
                    isExpanded = true;
                    maxLine = 4;
                    showmoreIcon = Icons.keyboard_arrow_up;
                  }
                });
              })
        ]);
      } else {
        return Flexible(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 0, 0),
              child: Text(
                yourText,
                maxLines: maxLine,
              ),
            ),
          ),
        );
      }
    });
  }
}
