import 'package:flutter/material.dart';

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedContainer(
                duration: Duration(seconds: 2),
                color: Colors.grey,
                child: IconButton(
                  icon: Icon(Icons.subdirectory_arrow_left),
                  onPressed: () {},
                ),
              ),
              Container(
                color: Colors.blue,
                child: IconButton(
                  color: Colors.black,
                  alignment: Alignment.topRight,
                  icon: Icon(widget.bioIcon),
                  onPressed: widget.onExpandBio,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
