import 'package:flutter/material.dart';
import 'package:mealsapp/Screen/mealsscreen.dart';
import 'package:mealsapp/data/data_dummy.dart';
import 'package:mealsapp/widgets/category_grid_item.dart';
import 'package:mealsapp/models/category.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
  void _selectCategory(BuildContext context, Category category) {
    final filterMeals = dummyMeals
        .where((element) => element.categories.contains(category.id))
        .toList();
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (ctx) =>
                MealsScreen(title: category.title, meals: filterMeals)));
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      children: [
        //AVAILABLEcategories.map((category))
        for (final item in availableCategories)
          CategoryGridItem(
            category: item,
            onSelectCategory: () {
              _selectCategory(context, item);
            },
          )
      ],
    );
  }
}
