import 'package:flutter/material.dart';

import '../../my_them.dart';
import '../tabs/ahadesScreen.dart';

class AhadesDetails extends StatelessWidget {
  static const String routeName = 'ahadesdetailes';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethArgs;

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
              ' ${args.title}',
              style:
                  Theme.of(context).textTheme.headline1?.copyWith(fontSize: 25),
            )),
          ),
          body: args.content.isEmpty
              ? Center(child: CircularProgressIndicator())
              : Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height * .83,
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
                    itemCount: args.content.length,
                    itemBuilder: (context, index) {
                      return Text(
                        args.content[index],
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
}
