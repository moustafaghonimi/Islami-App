import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/ahadesScreen.dart';
import 'package:islami_app/home/tabs/quranScreen.dart';
import 'package:islami_app/home/tabs/radioScreen.dart';
import 'package:islami_app/home/tabs/sebhaScreen.dart';
import 'package:islami_app/home/tabs/settings/setting_tab.dart';
import 'package:islami_app/my_them.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../providers/myProvider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Myprovider>(context);

    return Stack(
      children: [
        Image.asset(
         provider.changeBG(),
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.islami,
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
              bottomBar('assets/images/quran.png', AppLocalizations.of(context)!.quran),
              bottomBar('assets/images/sebha.png', AppLocalizations.of(context)!.sebha),
              bottomBar('assets/images/ahades.png', AppLocalizations.of(context)!.ahadeth),
              bottomBar('assets/images/radio.png', AppLocalizations.of(context)!.radio),
            BottomNavigationBarItem(
              icon:   Icon(Icons.settings),
              label: AppLocalizations.of(context)!.setting,
              backgroundColor: Theme.of(context).colorScheme.primary,
            )

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
    Setting(),
  ];

  BottomNavigationBarItem bottomBar(String imgName, String label) {
    return BottomNavigationBarItem(
      icon: ImageIcon(AssetImage(imgName)),
      label: label,
      backgroundColor:Theme.of(context).colorScheme.primary,
    );
  }
}
