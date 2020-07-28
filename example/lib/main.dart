import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:example/profile.Body.dart';
import 'package:example/tabbody/Link.dart';
import 'package:example/tabbody/pics.dart';
import 'package:example/topdeck.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
//import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int currentIndex = 0;
  TabController tc;
  final String url =
      "https://i.imgur.com/XzrRxP6_d.webp?maxwidth=728&fidelity=grand";

  @override
  void initState() {
    super.initState();
    tc = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
              //TODO: Show user Name
              child: Text(
                "Kuchuk Borom Debbarma",
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            backgroundColor: Colors.black,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(180),
              child: Column(
                children: <Widget>[
                  TopDeck(
                    userName: 'Amelia',
                    bio: 'VFX artist',
                    known: 9076,
                    knows: 545,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TabBar(
                        controller: tc,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.amberAccent,
                        tabs: [
                          Icon(
                            Icons.photo_size_select_actual,
                            color: Colors.white,
                            size: 28,
                          ),
                          Icon(
                            Icons.link,
                            color: Colors.white,
                            size: 28,
                          ),
                          Icon(
                            Icons.dashboard,
                            color: Colors.white,
                            size: 28,
                          )
                        ]),
                  ),
                ],
              ),
            )),
        body: TabBarView(
            controller: tc,
            children: [PictureTab(url), LinkTab(), PictureTab(url)]),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: currentIndex,
          showElevation: true,
          itemCornerRadius: 10,
          curve: Curves.easeInCirc,
          onItemSelected: (index) => setState(() {
            currentIndex = index;
          }),
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('Account'),
              activeColor: Colors.black,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(LineAwesomeIcons.search_plus),
              title: Text('Search'),
              activeColor: Colors.black,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(LineAwesomeIcons.home),
              title: Text('Home'),
              activeColor: Colors.black,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.change_history),
              title: Text(
                'Activity',
              ),
              activeColor: Colors.black,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.add),
              title: Text('Post'),
              activeColor: Colors.black,
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}
