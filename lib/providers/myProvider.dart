import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../sharedprefs.dart';

class Myprovider extends ChangeNotifier {
  String langCode = 'en';
  ThemeMode themeMode = ThemeMode.light;

  void getThemeAndLanguage() {
    String theme = SharedPrefs.prefs?.getString("theme") ?? 'light';
    String lang = SharedPrefs.prefs?.getString("lang") ?? 'en';
    if (lang == 'en') {
      langCode = 'en';
      print(lang);
    } else {
      langCode = 'ar';
      print(lang);
    }
    if (theme == 'light') {
      themeMode = ThemeMode.light;
      print(theme);
    } else {
      themeMode = ThemeMode.dark;
      print(theme);
    }
  }

  void langIsoCode(String isoCode) {
    if (isoCode == 'en') {
      langCode = isoCode;
      SharedPrefs.prefs?.setString("lang", "en");
    } else {
      langCode = isoCode;
      SharedPrefs.prefs?.setString("lang", "ar");
    }
    notifyListeners();
  }

  void cangeTheme(ThemeMode mode) {
    if (mode == ThemeMode.light) {
      themeMode = mode;
      SharedPrefs.prefs?.setString("theme", "light");
    } else {
      themeMode = mode;
      SharedPrefs.prefs?.setString("theme", "dark");
    }
    notifyListeners();
  }

  String changeBG() {
    if (themeMode == ThemeMode.light) {
      return 'assets/images/background.png';
    } else {
      return 'assets/images/dark_bg.png';
    }
  }
}
