import 'dart:io';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:mealsapp/Screen/categories.dart';
import 'package:mealsapp/Screen/mealsscreen.dart';
import 'package:mealsapp/Screen/tabs.dart';
import 'package:mealsapp/data/data_dummy.dart';
import 'package:mealsapp/helpdevelopment/myhttpoverriders.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  HttpOverrides.global = MyHttpoverrides(); //Debug only

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: theme, home: const TabScreen()); // Todo ...,
  }
}
