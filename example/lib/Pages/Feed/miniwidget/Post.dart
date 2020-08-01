import 'package:example/Pages/Feed/miniwidget/miniWidgetOFPost/BottomSection.dart';
import 'package:example/Pages/Feed/miniwidget/miniWidgetOFPost/PostPicture.dart';
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
    return _builderv2();
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
                    maxLine = 10;
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

  Widget _builderv2() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
      child: Column(
        children: <Widget>[
          PostPicMini(
            link: widget.link,
            onDoubleTap: () {
              print("Double Tapped " + widget.link);
            },
          ),
          BottomSection(
            link: widget.link,
            name: widget.name,
          ),
          _descriptionBuilder(widget.desc)
        ],
      ),
    );
  }
}
