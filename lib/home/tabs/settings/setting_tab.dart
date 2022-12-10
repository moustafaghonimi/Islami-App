import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/settings/themBottomSheet.dart';

import 'langBottomSheet.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Language',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: (){
              ShowButtomLangButtonScheat(context);
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  border:
                      Border.all(color: Theme.of(context).colorScheme.onSurface)),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Text(
                'English',
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Divider(
            color: Theme.of(context).colorScheme.primary,
            thickness: 2,
           indent: 20,
           endIndent: 20,
           height: 4,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Theme',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: (){
              ShowButtomThemeButtonScheat(context);
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  border:
                      Border.all(color: Theme.of(context).colorScheme.onSurface)),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Text(
                'Light',
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
  void ShowButtomLangButtonScheat(BuildContext context){
    showModalBottomSheet(context: context, builder: (context){
    return LangBottomSheet();
    });
  }
  void ShowButtomThemeButtonScheat(BuildContext context){
    showModalBottomSheet(context: context, builder: (context){
    return ThemBottomSheet();
    });
  }
}
