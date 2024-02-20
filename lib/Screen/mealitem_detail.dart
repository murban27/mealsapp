import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MealItemDetail extends StatelessWidget {
  MealItemDetail({super.key, required this.itemname, required this.imageurl});
  final String itemname;
  final String imageurl;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(itemname),
      ),
      body: Image.network(imageurl,
          height: 300, width: double.infinity, fit: BoxFit.cover),
    );
  }
}
