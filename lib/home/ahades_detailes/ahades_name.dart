import 'package:flutter/material.dart';
import 'package:islami_app/home/sura_detailes/sura_details.dart';

import '../tabs/ahadesScreen.dart';
import 'ahadesDetailes.dart';

class AhadesName extends StatelessWidget {
  String ahadesName;
  HadethArgs hadethArgs;

  AhadesName(this.ahadesName, this.hadethArgs);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          AhadesDetails.routeName,
          arguments: hadethArgs,
        );
      },
      child: Center(
        child: Text(
          ahadesName,
          style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 20),
        ),
      ),
    );
  }
}
