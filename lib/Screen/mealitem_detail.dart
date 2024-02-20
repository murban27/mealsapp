import 'package:flutter/material.dart';

class MealItemDetail extends StatelessWidget {
  MealItemDetail({super.key, required this.itemname, required this.image});
  final String itemname;
  final Image image;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(itemname),
        ),
        body: image);
  }
}
