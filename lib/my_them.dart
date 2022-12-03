import 'package:flutter/material.dart';

class MyThemeData {
  static const Color colorBlask = Color.fromRGBO(36, 36, 36, 1.0);
  static const Color colorGold = Color.fromRGBO(183, 147, 95, 1.0);
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorGold,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,


      ),
      textTheme: TextTheme(
          headline1: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: colorBlask,
      )));
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
      ));
}
