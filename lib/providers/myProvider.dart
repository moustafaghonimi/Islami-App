import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myprovider extends ChangeNotifier{
  String langCode='en';
  ThemeMode themeMode=ThemeMode.light;

  void langIsoCode(String isoCode)
  {
    langCode=isoCode;
    notifyListeners();
  }
  void cangeTheme( ThemeMode mode){
    themeMode=mode;
  notifyListeners();
  }
  String changeBG(){
    if(themeMode==ThemeMode.light){
      return  'assets/images/background.png';
    }
    else{
      return 'assets/images/dark_bg.png';
    }
  }

}