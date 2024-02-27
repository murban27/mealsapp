import 'package:flutter/material.dart';
import 'package:mealsapp/models/meal.dart';

import '../widgets/mealitem.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({Key? key, this.title, required this.meals});
  final String? title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: title != null
          ? AppBar(
              title: Text(title!),
            )
          : null,
      body: meals.isEmpty
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "No meals available for categories",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            )
          : ListView.builder(
              itemCount: meals.length,
              itemBuilder: (context, index) => MailItem(
                meal: meals[index],
              ),
            ),
    );
  }
}
