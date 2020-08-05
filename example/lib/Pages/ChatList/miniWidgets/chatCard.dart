//import 'package:chat_app/modules/chat_detail_page.dart';
import 'package:example/Pages/ChatList/ConversationUI/Conversation_1.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChatCard extends StatelessWidget {
  String text;
  String secondaryText;
  String image;
  String time;
  bool isMessageRead;
  ChatCard(
      {@required this.text,
      @required this.secondaryText,
      @required this.image,
      @required this.time,
      @required this.isMessageRead});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateToConversation(context);
      },
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    maxRadius: 30,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(text),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            secondaryText,
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              time,
              style: TextStyle(
                  fontSize: 12,
                  color: isMessageRead ? Colors.pink : Colors.grey.shade500),
            ),
          ],
        ),
      ),
    );
  }

  void navigateToConversation(BuildContext context) {
    Navigator.push(context, _customRoute());
  }

  Route _customRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return Conversation_1();
      },
      transitionDuration: Duration(milliseconds: 300),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        animation =
            CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
        return ScaleTransition(
          scale: animation,
          child: child,
          alignment: Alignment.center,
        );
      },
    );
  }
}
