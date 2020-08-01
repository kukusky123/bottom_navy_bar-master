import 'package:example/Pages/Feed/miniwidget/Post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class FeedMain extends StatefulWidget {
  @override
  _FeedMainState createState() => _FeedMainState();
}

class _FeedMainState extends State<FeedMain>
    with SingleTickerProviderStateMixin {
  List<String> urls;
  List<String> descs;
  List<String> names;

  TabController tc;

  @override
  void initState() {
    super.initState();
    urls = new List();
    descs = new List();
    names = new List();
    tc = new TabController(length: 1, vsync: this);
    addTESTDATA();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: nigger(),
    );
  }

  Widget nigger() {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
            urls.length,
            (index) => Posts(
                  desc: descs[index],
                  likes: '',
                  link: urls[index],
                  name: names[index],
                )),
      ),
    );
  }

  Widget fix() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                LineAwesomeIcons.camera,
                color: Colors.black,
                size: 35,
              ),
              Icon(
                Icons.change_history,
                size: 35,
                color: Colors.black,
              )
            ],
          ),
        ),
      ],
    );
  }

  void addTESTDATA() {
    urls.add(
        "https://img1.nickiswift.com/img/gallery/where-does-emilia-clarke-live-and-how-big-is-her-house/intro-1583262251.jpg");

    urls.add(
        "https://vignette.wikia.nocookie.net/gameofthrones/images/9/99/Emilia_Clarke_SAG_awards_2016.jpg/revision/latest/top-crop/width/360/height/450?cb=20161215025937");

    urls.add(
        "https://media.allure.com/photos/5cc76c7447850a05420c05b4/4:3/w_2031,h_1523,c_limit/0619-allure-cover-shoot-emilia-clarke-marina-moscone-dress.png");
    urls.add(
        "https://i.pinimg.com/originals/ba/e4/e8/bae4e83e781b225ba6e903b38d0e32fa.jpg");
    urls.add(
        "https://static.highsnobiety.com/thumbor/jsbsqEeIci9BWiUlpsTIG1jWwhw=/fit-in/1200x720/smart/static.highsnobiety.com/wp-content/uploads/2015/07/28105908/rapper-snapchat-usernames-feature.jpg");
    urls.add(
        "https://media1.popsugar-assets.com/files/thumbor/0zRdL2eolu1ZzDjLtLS-gcGUu_k/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2017/04/12/032/n/1922398/f18f0f5a58eebc47a5d6d1.65693853_edit_img_image_36279217_1480082400/i/Hottest-Pictures-Dwayne-Rock-Johnson.jpg");
    urls.add(
        "https://s3-prod.adage.com/s3fs-public/styles/width_1024/public/PewDiePie20170911.jpg");

    descs.add("With great power comes great greed.");
    descs.add("Showing tits on set got me all tired");
    descs.add(
        "Wearing single socks while eating pieces of glass and picking your nose simultaniusly is a really great feeling NGL. Go team power range dino ranger. Anywaus I am out of ideas so just gonna post more bs and stick a laptpo in my anus.");
    descs.add(
        "Nail cutters look like spaceship but!!!!!!!! Why are your tits so unproportional fr? Each of them are looking on opposite dicrection.");
    descs.add("NGL I love give ostrich blowJobs.");
    descs.add("Elon Mush has micro penis.");
    descs.add(
        "Mosquito killers are pleasant unless you have a circumcised dick inside a labrador.");

    names.add("Emilia Clarke");
    names.add("Rock the cock.");
    names.add("BlenderPass");
    names.add("BathWaterBellie");
    names.add("PewDiePie");
    names.add("Motu-MicroPenis");
    names.add("ParrotPanties");
  }
}
