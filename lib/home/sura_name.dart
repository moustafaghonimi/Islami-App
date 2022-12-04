
import 'package:flutter/material.dart';
import 'package:islami_app/home/sura_details.dart';

class SuraName extends StatelessWidget {
  String suraName;
  int index;
  SuraName(this.suraName,this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
         Navigator.pushNamed(context, SuraDetiles.routeName,
         arguments: SuraDetailArgs(suraName,index));
      },
      child: Center(
        child: Text(suraName,style: Theme.of(context).textTheme.headline1?.copyWith(
          fontSize: 20
        ),),
      ),
    );
  }
}
