import 'package:flutter/material.dart';
import 'package:islami_app/my_them.dart';

import 'home/homeScreen.dart';
import 'home/sura_details.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (c) => HomeScreen(),
        SuraDetiles.routeName: (c) => SuraDetiles(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light,
    ),
  );
}
