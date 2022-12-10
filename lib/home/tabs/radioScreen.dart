import 'package:flutter/material.dart';
import 'package:islami_app/providers/myProvider.dart';
import 'package:provider/provider.dart';

import '../../my_them.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<Myprovider>(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:80),
            child: Image.asset(
              'assets/images/radio_image.png',
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            child: Text(
              AppLocalizations.of(context)!.quran_radio,
              style: Theme.of(context).textTheme.headline1?.copyWith(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: MediaQuery.of(context).size.width * .80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.keyboard_arrow_left,
                  color: MyThemeData.colorGold,
                  size: 60,
                ),
                Icon(
                  Icons.play_arrow,
                  color: MyThemeData.colorGold,
                  size: 70,
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: MyThemeData.colorGold,
                  size: 60,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

}
