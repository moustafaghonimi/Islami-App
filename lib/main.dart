import 'package:flutter/material.dart';

import 'homeScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false
    ,initialRoute: HomeScreen.routeName, routes: {
    HomeScreen.routeName: (c) => HomeScreen(),
  },),);
}
