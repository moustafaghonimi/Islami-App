import 'package:flutter/material.dart';

class SuraDetiles extends StatelessWidget {
static const String routeName='suradetail';

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as SuraDetailArgs;
    return Stack(
      children: [
        Image.asset(
          'assets/images/background.png',
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),

        Scaffold(
          appBar: AppBar(
            title: Center(child: Text('سورة ${args.SuraName}',style: Theme.of(context).textTheme.headline1,)),
          ),
        ),
      ],
    );
  }


}
class SuraDetailArgs{
  String SuraName;
  SuraDetailArgs(this.SuraName);
}
