import 'package:flutter/material.dart';

class TopDeck extends StatelessWidget {
  //PICTURE FOR FUTURE
  final String userName, bio;
  final int known, knows;
  TopDeck({this.bio, this.known, this.knows, this.userName});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.40,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 36,
          ),
          CircleAvatar(
            radius: 48,
            backgroundImage: AssetImage("assets/images/avatar1.jpg"),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            userName,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            bio,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Container(
            height: 64,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: Container(),
                ),
                Container(
                  width: 110,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "POST",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        known.toString(),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 110,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "KNOWS",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        knows.toString(),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 110,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "KNOWN TO",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        known.toString(),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
