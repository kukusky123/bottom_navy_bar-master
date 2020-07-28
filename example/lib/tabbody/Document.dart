import 'package:flutter/cupertino.dart';

class DocTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image: NetworkImage(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSZxiLpXUxF3IxNJmEPqfWm1Bkb8EeFvQQVgw&usqp=CAU"),
      ),
    );
  }
}
