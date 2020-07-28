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
          Text(
            "PROFESSION",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 110,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "POST",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              known.toString(),
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "KNOWS",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              knows.toString(),
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
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
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              known.toString() + "K",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    radius: 48,
                    backgroundImage: NetworkImage(
                        "https://data.whicdn.com/images/318658700/original.jpg"),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 10),
                  child: Text(
                    '''Hi i am a sexy whore with 69 husbands. And the nigga just decided to fuck my whore like that like wtf but the nigger is like wtf hoe i am n[ot goin to fuck this stinky pussy asd d fdf g hgf gff gh gfh h rtyh tyh jy j  fgh gh thy jy tuty j  dfgd fgd fg df gdf gd fg fg dfg dfgdpofh pofighdo ffdf  podyfgpodhfg df f gpdfh gdfuh gdio fdf iuhgfiufhg dofuh ouh iouh oiu hiouh iuio ''',
                    textDirection: TextDirection.ltr,
                    maxLines: 1,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
