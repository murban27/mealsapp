import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:mealsapp/Screen/categories.dart';
import 'package:mealsapp/Screen/mealsscreen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});
  @override
  State<TabScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabScreen> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activescreen = const CategoriesScreen();
    String title = 'Categories';
    switch (_selectedPageIndex) {
      case 0:
        activescreen = const CategoriesScreen();
        title = 'Categories';
        break;
      case 1:
        activescreen = MealsScreen(meals: []);
        title = 'Favourites';
        break;
      default:
        activescreen = const CategoriesScreen();
        title = 'Categories';
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: activescreen,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          _selectPage(value);
        },
        currentIndex: _selectedPageIndex,
        selectedItemColor: Colors.orange,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.set_meal), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorites')
        ],
      ),
    );
  }
}
