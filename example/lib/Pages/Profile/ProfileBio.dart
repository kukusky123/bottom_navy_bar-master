import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class ProfileBio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Row(
                  children: <Widget>[
                    Text(
                      "△PokiMane98",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                )),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Text(
                "Hi my name is Poki, I am a streamer and enjoy spending my time streaming. Enjoy simping? Join my simp army. Soon to sell my own adidas bath water. 💋 It's going to be 10x better than Bellie's. I also am not a twitch thot and don't care about exposing my body although I was a cam girl in the past.",
                maxLines: 4,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 20),
                    child: Icon(
                      Icons.location_on,
                      size: 40,
                    ),
                  ),
                  Text("West Virginia,USA")
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 20),
                    child: Icon(
                      LineAwesomeIcons.female,
                      size: 40,
                    ),
                  ),
                  Text("Female")
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 20),
                    child: Icon(
                      LineAwesomeIcons.briefcase,
                      size: 40,
                    ),
                  ),
                  Text("Content creator")
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 20),
                    child: Icon(
                      LineAwesomeIcons.birthday_cake,
                      size: 40,
                    ),
                  ),
                  Text("24")
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              LineAwesomeIcons.youtube,
              size: 50,
            ),
            Icon(
              LineAwesomeIcons.instagram,
              size: 50,
            ),
            Icon(
              LineAwesomeIcons.linkedin,
              size: 50,
            ),
            Icon(
              LineAwesomeIcons.whatsapp,
              size: 50,
            )
          ],
        ),
      ],
    );
  }
}
