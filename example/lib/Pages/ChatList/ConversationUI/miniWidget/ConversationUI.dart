import 'package:flutter/material.dart';

class ConversationUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).accentColor),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Flexible(
              child: TextField(
                controller: null,
                onSubmitted: null,
                decoration:
                    InputDecoration.collapsed(hintText: 'Send a message'),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(icon: Icon(Icons.send), onPressed: () => {}),
            ),
          ],
        ),
      ),
    );
  }
}
