import 'package:flutter/material.dart';

class ThemeModel {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.pink,
      appBarTheme: AppBarTheme(color: Colors.purple),
      textTheme: TextTheme(
          titleLarge: TextStyle(
              fontSize: 18,
              color: Colors.purple,
              fontWeight: FontWeight.bold)));

  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.green,
      appBarTheme: AppBarTheme(color: Colors.cyan),
      textTheme: TextTheme(
          titleLarge: TextStyle(
              fontSize: 24, color: Colors.cyan, fontWeight: FontWeight.bold)));
}
