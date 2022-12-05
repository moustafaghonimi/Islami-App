import 'package:flutter/material.dart';

import '../../my_them.dart';

class SebhaScreen extends StatefulWidget {
  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int current = 1;
  List<String> dowa = [
    'سبحان الله',
    'الحمد لله',
    'الله اكبر',
  ];
  int indexOfDowa = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Center(
                  child: Image.asset('assets/images/sebha_head.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 65),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        calcTabAtBtn();
                      },
                      child: Transform(
                        child: Image.asset(
                          'assets/images/sebha_logo.png',
                        ),
                       alignment: FractionalOffset.center,
                       transformHitTests: true, transform: new Matrix4.identity()..rotateZ((current*5.5)*3.14/180),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 22,
            ),
            Container(
              child: Text(
                'Tasbeh Number',
                style: Theme.of(context)
                    .textTheme
                    .headline1
                    ?.copyWith(fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            InkWell(
              onTap: () {
                calcTabAtBtn();
              },
              child: Container(

                  // width: MediaQuery.of(context).size.width*.20,
                  // height: MediaQuery.of(context).size.height*.10,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(183, 147, 95, 1.0),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  padding: EdgeInsets.all(25),
                  child: Text(
                    '${current}',
                    style: Theme.of(context).textTheme.headline1?.copyWith(
                          fontSize: 40,
                        ),
                    textAlign: TextAlign.center,
                  )),
            ),
            SizedBox(
              height: 22,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: MyThemeData.colorGold,
                borderRadius: BorderRadius.circular(30),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Text(
                dowa[indexOfDowa],
                style: Theme.of(context).textTheme.headline1?.copyWith(
                    fontWeight: FontWeight.normal, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }

  void calcTabAtBtn() {
    calcDowa();
    if (current > 0 && current < 33) {
      current++;
    } else {
      current = 1;
    }

    setState(() {});
  }

  void calcDowa() {
    if (current == 33) {
      indexOfDowa++;
      if (indexOfDowa == dowa.length) {
        indexOfDowa = 0;
      }
    }
  }
}
