import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/my_them.dart';

class SuraDetiles extends StatefulWidget {
  static const String routeName = 'suradetail';

  @override
  State<SuraDetiles> createState() => _SuraDetilesState();
}

class _SuraDetilesState extends State<SuraDetiles> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }

    return Stack(
      children: [
        Image.asset(
          'assets/images/background.png',
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              'سورة ${args.SuraName}',
              style: Theme.of(context).textTheme.headline1,
            )),
          ),
          body: verses.isEmpty
              ? Center(child: CircularProgressIndicator())
              : Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: MyThemeData.colorWhite,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: MyThemeData.colorGold,
                        thickness: 1,
                      );
                    },
                    itemCount: verses.length,
                    itemBuilder: (context, index) {
                      return Text(
                        verses[index],
                        style: Theme.of(context).textTheme.headline1?.copyWith(
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                            ),
                        textAlign: TextAlign.center,
                      );
                    },
                  ),
                ),
        ),
      ],
    );
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    verses = lines;
    setState(() {});
  }
}

class SuraDetailArgs {
  String SuraName;
  int index;

  SuraDetailArgs(this.SuraName, this.index);
}
