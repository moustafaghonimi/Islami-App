import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/ahadesScreen.dart';
import 'package:islami_app/home/tabs/quranScreen.dart';
import 'package:islami_app/home/tabs/radioScreen.dart';
import 'package:islami_app/home/tabs/sebhaScreen.dart';
import 'package:islami_app/my_them.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/background.png',
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Islami',
              style: Theme.of(context).textTheme.headline1,
            ),
            centerTitle: true,
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              currentIndex = index;
              setState(() {});
            },
            currentIndex: currentIndex,
            items: [
              bottomBar('assets/images/quran.png', 'Quran'),
              bottomBar('assets/images/sebha.png', 'Sebha'),
              bottomBar('assets/images/ahades.png', 'Ahades'),
              bottomBar('assets/images/radio.png', 'Radio'),
            ],
          ),
          body: Tabs[currentIndex],
        ),
      ],
    );
  }

  List<Widget> Tabs = [
    QuranScreen(),
    SebhaScreen(),
    AhadesScreen(),
    RadioScreen(),
  ];

  BottomNavigationBarItem bottomBar(String imgName, String label) {
    return BottomNavigationBarItem(
      icon: ImageIcon(AssetImage(imgName)),
      label: label,
      backgroundColor: MyThemeData.colorGold,
    );
  }
}
