import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderDeligate extends SliverPersistentHeaderDelegate {
  double toolBarHeight;
  //toolBarHeight Included in both
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
    return Container(
      child: Column(
        children: <Widget>[
          appBar(),
          searchBar(shrinkOffset),
        ],
      ),
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

  Widget searchBar(double shrinkoffset) {
    return Transform.translate(
      offset: Offset(shrinkoffset * 2.5, 0),
      child: Transform.rotate(
        angle: shrinkoffset * 0,
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search...",
            hintStyle: TextStyle(color: Colors.grey),
            focusColor: Colors.white,
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
    );
  }
}
