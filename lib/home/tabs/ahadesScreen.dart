import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../my_them.dart';
import '../ahades_detailes/ahades_name.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AhadesScreen extends StatefulWidget {
  @override
  State<AhadesScreen> createState() => _AhadesScreenState();
}

class _AhadesScreenState extends State<AhadesScreen> {
  List<HadethArgs> Ahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (Ahadeth.isEmpty) {
      loadHadethData();
    }

    return Column(
      children: [
        Image.asset('assets/images/ahadeth_bg.png'),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.90,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(35)
                //more than 50% of width makes circle
                ),
            clipBehavior: Clip.antiAlias,
            child: Container(
              color: MyThemeData.colorGold,
              width: MediaQuery.of(context).size.width * 0.90,
              child: Text(AppLocalizations.of(context)!.ahadeth,
                  style: Theme.of(context).textTheme.headline1?.copyWith(
                        fontSize: 22,
                        color: MyThemeData.colorBlack,
                      ),
                  textAlign: TextAlign.center),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return AhadesName(Ahadeth[index].title, Ahadeth[index]);
                //     style: Theme.of(context).textTheme.headline1?.copyWith(
                //           fontSize: 22,
                //           color: MyThemeData.colorBlack,
                //         ),
                //     textAlign: TextAlign.center);
                //
                // //SuraName(SuraNames[index],index);
              },
              separatorBuilder: (context, index) {
                return Divider(
                  color: MyThemeData.colorGold,
                  thickness: 1,
                  indent: 25,
                  endIndent: 25,
                );
              },
              itemCount: Ahadeth.length),
        )
      ],
    );
  }

  void loadHadethData() async {
    String content = await rootBundle.loadString('assets/files/ahadeth .txt');
    List<String> AllAhadeth = content.trim().split('#');
    for (int i = 0; i < AllAhadeth.length; i++) {
      String hadeth = AllAhadeth[i];
      List<String> lines = hadeth.trim().split('\n');
      String title = lines[0];
      lines.removeAt(0);
      HadethArgs hadethArgsData = HadethArgs(title, lines);
      Ahadeth.add(hadethArgsData);
    }

    setState(() {});
  }
}

class HadethArgs {
  String title;
  List<String> content;

  HadethArgs(this.title, this.content);
}
