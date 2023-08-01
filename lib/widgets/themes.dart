import 'package:flutter/material.dart';

class Mythemes{
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    primarySwatch: Colors.deepPurple, 
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(color: Colors.black ,),centerTitle: true,
    ),
  );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
  );
}