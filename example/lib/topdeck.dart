import 'package:flutter/material.dart';

class TopDeck extends StatelessWidget {
  //PICTURE FOR FUTURE
  final String userName, bio;
  final int known, knows;
  TopDeck({this.bio, this.known, this.knows, this.userName});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 7),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                userName,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          Text(
            "PROFESSION",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            '''Hi i am a sexy whore with 69 husbands.
            And the nigga just decided to fuck
            my whore like that 
            like wtf''',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
          Container(
            height: 120,
            alignment: Alignment.topRight,
            child: CircleAvatar(
              radius: 48,
              backgroundImage: NetworkImage(
                  "https://3.bp.blogspot.com/-SrO5Ne-mVPw/V3BxIbsXVrI/AAAAAAAAABM/KldO6VonLFsHnDnnV0TOyZRlCecg6SjCwCLcB/s640/batman_derp_o_3_o_by_xxlovelydarkness-d5nyupy%255B1%255D.png"),
            ),
          ),
          Container(
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
