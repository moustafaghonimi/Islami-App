import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/settings/themBottomSheet.dart';
import 'package:islami_app/my_them.dart';
import 'package:islami_app/providers/myProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'langBottomSheet.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<Myprovider>(context);
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
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
                provider.langCode=='en'?'English':'العربيه',
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
            AppLocalizations.of(context)!.theme,
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
                provider.themeMode==ThemeMode.light?'Light':'Dark',
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
    showModalBottomSheet(backgroundColor: Theme.of(context).colorScheme.secondary,context: context, builder: (context){

    return LangBottomSheet();
    });
  }
  void ShowButtomThemeButtonScheat(BuildContext context){
    showModalBottomSheet(backgroundColor: Theme.of(context).colorScheme.secondary,context: context, builder: (context){

    return ThemBottomSheet();
    });
  }
}
