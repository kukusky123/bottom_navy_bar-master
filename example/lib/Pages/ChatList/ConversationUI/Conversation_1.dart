import 'package:example/Pages/ChatList/ConversationUI/model/chatMessage.dart';
import 'package:flutter/material.dart';

import 'miniWidget/chatBuble.dart';
import 'model/sendMenuClass.dart';

// ignore: camel_case_types
class Conversation_1 extends StatefulWidget {
  @override
  _Conversation_1State createState() => _Conversation_1State();
}

// ignore: camel_case_types
class _Conversation_1State extends State<Conversation_1>
    with SingleTickerProviderStateMixin {
  double curerntRotation = 0;
  bool shouldRotate;
  TextEditingController textFieldController;
  void showModal() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height / 2,
            color: Color(0xff737373),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: Container(
                      height: 4,
                      width: 50,
                      color: Colors.grey.shade200,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 0),
                    child: ListView.builder(
                      itemCount: menuItems.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: menuItems[index].color.shade50,
                              ),
                              height: 50,
                              width: 50,
                              child: Icon(
                                menuItems[index].icons,
                                size: 20,
                                color: menuItems[index].color.shade400,
                              ),
                            ),
                            title: Text(menuItems[index].text),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  void initState() {
    super.initState();
    textFieldController = new TextEditingController();
  }

  List<SendMenuItems> menuItems = [
    SendMenuItems(
        text: "Photos & Videos", icons: Icons.image, color: Colors.amber),
    //SendMenuItems(
    //text: "Document", icons: Icons.insert_drive_file, color: Colors.blue),
    SendMenuItems(text: "Audio", icons: Icons.music_note, color: Colors.orange),
    SendMenuItems(
        text: "Location", icons: Icons.location_on, color: Colors.green),
    SendMenuItems(text: "Contact", icons: Icons.person, color: Colors.purple),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Flexible(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 62),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: double.infinity,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 60),
                        child: ListView.builder(
                          itemCount: 300,
                          shrinkWrap: true,
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          physics: NeverScrollableScrollPhysics(),
                          // ignore: missing_return
                          itemBuilder: (context, index) {
                            try {
                              return ChatBubble(
                                chatMessage: ChatMessage(
                                    message: "Hi nigger.",
                                    type: MessageType.Receiver),
                              );
                            } catch (e) {}
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: EdgeInsets.only(left: 16, bottom: 10),
              height: 55,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      showModal();
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(
                        Icons.attach_file,
                        color: Colors.white,
                        size: 21,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        enableSuggestions: true,
                        autofocus: true,
                        decoration: InputDecoration(
                            hintText: "Type a message...",
                            hintStyle: TextStyle(color: Colors.grey.shade500),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 0, bottom: 10),
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Transform.rotate(
                        angle: curerntRotation,
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Colors.black,
                      elevation: 10,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  ///Calculates the rotation to rotate the send button on every letter the user typing in the textfield
  ///The rotation has to be done as we go through every char of a string so that we user copy pastes it is still going to function.
  ///This function is called onChange of the TextField
  // ignore: non_constant_identifier_names

}
