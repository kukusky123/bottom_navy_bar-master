import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderDeligate extends SliverPersistentHeaderDelegate {
  double toolBarHeight;
  double closedHeight;
  double openHeight;
  HeaderDeligate({
    this.toolBarHeight,
    this.closedHeight,
    this.openHeight,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Column(
      children: <Widget>[
        appBar(),
        AnimatedSwitcher(
          duration: Duration(milliseconds: 200),
          child: searchBar(shrinkOffset),
        ),
      ],
    );
  }

  @override
  double get maxExtent => toolBarHeight + openHeight;

  @override
  double get minExtent => toolBarHeight + closedHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;

  Widget appBar() {
    return Container(
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
                padding: EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
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
    );
  }

  Widget searchBar(double shrinkOffset) {
    if (shrinkOffset >= 120) {
      return Container();
    } else
      return Transform.scale(
        scale: _scaleCalculator(shrinkOffset, 0.005),
        child: Transform.translate(
          offset: Offset(_translateCalculator(shrinkOffset, 2.5), 0),
          child: Opacity(
            opacity: _opacityCalculator(shrinkOffset),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                hintStyle: TextStyle(color: Colors.grey),
                focusColor: Colors.black,
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
        ),
      );
  }

  ///Used to calculate the scale to make sure it doesnt exceed 1.0
  double _scaleCalculator(double shrinkRate, double multiplier) {
    double scaleFactor = 1;
    if (shrinkRate == 0) {
      scaleFactor = 1;
      return scaleFactor;
    } else {
      scaleFactor = scaleFactor - (multiplier * shrinkRate);
      if (scaleFactor <= 0) {
        return 0.0;
      } else
        return scaleFactor;
    }
  }

  ///Calculates the translate to make sure it is wokring fine and returns the X axis
  double _translateCalculator(double shrinkOffRate, double multiplier) {
    double translate = 0;
    if (shrinkOffRate == 0) {
      translate = 0;
      return translate;
    } else {
      translate = shrinkOffRate * multiplier;
      return translate;
    }
  }

  ///calculates the opacity and returns the values where 1= max 0 = min
  double _opacityCalculator(double shrinkOffRate) {
    double opacity = 1;
    if (shrinkOffRate == 0) {
      opacity = 1;

      return opacity;
    } else if (shrinkOffRate == 150) {
      opacity = 0;

      return opacity;
    } else {
      opacity = opacity - shrinkOffRate * 0.003;

      return opacity;
    }
  }
}
