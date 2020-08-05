//import 'package:chat_app/models/chat_message.dart';
//import 'package:chat_app/modules/chat_detail_page.dart';
import 'package:example/Pages/ChatList/ConversationUI/model/chatMessage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChatBubble extends StatefulWidget {
  ChatMessage chatMessage;
  ChatBubble({@required this.chatMessage});
  @override
  _ChatBubbleState createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 8),
      child: Align(
        alignment: (widget.chatMessage.type == MessageType.Receiver
            ? Alignment.topLeft
            : Alignment.topRight),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: (widget.chatMessage.type == MessageType.Receiver
                ? Colors.white10
                : Colors.black),
          ),
          padding: EdgeInsets.all(16),
          child: Text(
            widget.chatMessage.message,
            style: TextStyle(
                color: widget.chatMessage.type == MessageType.Receiver
                    ? Colors.black
                    : Colors.white),
          ),
        ),
      ),
    );
  }
}
