import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class TopDeck extends StatefulWidget {
  //PICTURE FOR FUTURE
  final Function onExpandBio;
  final String userName, bio;
  final int known, knows;
  final IconData bioIcon;

  TopDeck(
      {this.bio,
      this.known,
      this.knows,
      this.userName,
      this.onExpandBio,
      this.bioIcon});

  @override
  _TopDeckState createState() => _TopDeckState();
}

class _TopDeckState extends State<TopDeck> {
  Color followColor = Colors.white24;
  bool isFollowing = false;
  Color bioColor = Colors.white;
  bool isExpanded = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            //DATA + DP
            children: <Widget>[
              Card(
                borderOnForeground: true,
                semanticContainer: true,
                elevation: 0,
              ),
              Card(
                borderOnForeground: true,
                semanticContainer: true,
                elevation: 0,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Text(
                          "Knows",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Text(
                        "699",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: 70,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    "https://ayo.news/wp-content/uploads/2020/03/Pokimane-e1583494860852.jpg"),
              ),
              Card(
                borderOnForeground: true,
                semanticContainer: true,
                elevation: 0,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Text(
                          "Known",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Text(
                        "5.8m",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Text(
            "Poki Mane",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Row(
            //FOLOLOW BUTTON WILL ANIMATE WHEN CLICKED
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                color: followColor,
                child: IconButton(
                  icon: Icon(LineAwesomeIcons.fire),
                  onPressed: () {
                    setState(() {
                      if (isFollowing) {
                        followColor = Colors.white38;
                        isFollowing = isFollowing = false;
                      } else if (isFollowing == false) {
                        followColor = Colors.blueGrey;
                        isFollowing = isFollowing = true;
                      }
                    });
                  },
                ),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                color: bioColor,
                child: IconButton(
                  color: Colors.black,
                  alignment: Alignment.topRight,
                  icon: Icon(widget.bioIcon),
                  onPressed: () {
                    setState(() {
                      widget.onExpandBio();
                      if (isExpanded) {
                        bioColor = Colors.yellow;
                        isExpanded = false;
                      } else {
                        bioColor = Colors.black;
                        isExpanded = true;
                      }
                    });
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
