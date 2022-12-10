import 'package:flutter/material.dart';
import 'package:islami_app/my_them.dart';
import 'package:islami_app/providers/myProvider.dart';
import 'package:islami_app/sharedprefs.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home/ahades_detailes/ahadesDetailes.dart';
import 'home/homeScreen.dart';
import 'home/sura_detailes/sura_details.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // تحمل اى فيوتشر الاول قبل ما البرنامج يرن
  SharedPrefs.prefs = await SharedPreferences.getInstance();
  runApp(ChangeNotifierProvider(
      create: (context) => Myprovider()..getThemeAndLanguage(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Myprovider>(context);
    provider.getThemeAndLanguage();
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('ar', ''), // Spanish, no country code
      ],
      locale: Locale(provider.langCode),
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (c) => HomeScreen(),
        SuraDetiles.routeName: (c) => SuraDetiles(),
        AhadesDetails.routeName: (c) => AhadesDetails(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.themeMode,
    );
  }
}
