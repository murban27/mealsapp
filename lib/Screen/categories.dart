import 'package:flutter/material.dart';
import 'package:mealsapp/data/data_dummy.dart';
import 'package:mealsapp/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick your category'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: [
          //AVAILABLEcategories.map((category))
          for (final item in availableCategories)
            CategoryGridItem(category: item)
        ],
      ),
    );
  }
}
