import 'package:flutter/material.dart';

import '../../my_them.dart';
import '../sura_name.dart';

class QuranScreen extends StatelessWidget {
  List<String>SuraNames=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/quran_bg_image.png'),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width*0.90,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(35)
              //more than 50% of width makes circle
            ),
            clipBehavior: Clip.antiAlias,
            child: Container (
              color: MyThemeData.colorGold,
              width: MediaQuery.of(context).size.width*0.90,
              child: Text('Sura Name',style: Theme.of(context).textTheme.headline1?.copyWith(
                fontSize: 22,
                color: MyThemeData.colorBlack,
              ),textAlign: TextAlign.center),
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(itemBuilder: (context, index) {
            return SuraName(SuraNames[index]);
          },
              separatorBuilder:(context, index) {
                return Divider(
                  color: MyThemeData.colorGold,
                  thickness: 1,
                  indent: 25,
                  endIndent: 25,
                );
              },

              itemCount: SuraNames.length),
        )
      ],
    );
  }
}
