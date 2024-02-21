import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MealItemDetail extends StatelessWidget {
  MealItemDetail(
      {super.key,
      required this.itemname,
      required this.imageurl,
      required this.ingredients,
      required this.steps});
  final String itemname;
  final String imageurl;
  final List<String> ingredients;
  final List<String> steps;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(itemname),
      ),
      body: Column(children: [
        const SizedBox(
          height: 14,
        ),
        Image.network(imageurl,
            height: 300, width: double.infinity, fit: BoxFit.cover),
        const SizedBox(height: 15),
        Text(
          'Text ingredient',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Theme.of(context).colorScheme.primary),
        ),
        const SizedBox(
          height: 9,
        ),
        for (final ingredient in ingredients)
          Text(
            ingredient,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Theme.of(context).colorScheme.secondary),
          ),
        SizedBox(height: 14),
        for (final step in steps)
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text(
                step,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Theme.of(context).colorScheme.secondary),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ]),
    );
  }
}
