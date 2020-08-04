import 'package:example/Pages/ChatList/miniWidgets/chatCard.dart';
import 'package:flutter/material.dart';

class ChatList_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //APP BAR
        SafeArea(
          //TOP PART
          child: Container(
            color: Colors.black,
            child: Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "DMs",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.transparent,
                    onPressed: () {},
                    child: Container(
                      padding:
                          EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.refresh,
                            color: Colors.black,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        //SEARCH BAR
        Padding(
          //2nd TOP
          padding: EdgeInsets.only(top: 16, left: 16, right: 16),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search...",
              hintStyle: TextStyle(color: Colors.grey),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
                size: 20,
              ),
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(8),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey.shade100)),
            ),
          ),
        ),
        Expanded(
          child: ListView(
              children: List.generate(30, (index) {
            return new ChatListWidget(
                text: "Text demo",
                secondaryText: "Hi dude",
                image: "Image",
                time: "Time",
                isMessageRead: true);
          })),
        )
      ],
    );
  }
}
