import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/sura_name_builder.dart';

class quranScreen extends StatelessWidget {
  static const String routeName="quran";
  List<String>suraNames=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
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
        Expanded(
            flex: 2,
            child: Image(image: AssetImage("assets/images/quran_header_image.png"))),
        Container(height: 2,color: MyTheme.primaryColor,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text("Chapter name",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500),),
        ),
        Container(height: 2,color: MyTheme.primaryColor,),
        Expanded(
          flex: 3,
          child: ListView.separated(
              itemBuilder:(context, index) {
                return suraNameBuilder(title: suraNames[index],index: index,);
              },
              separatorBuilder: (context, index) => Container(margin: EdgeInsets.symmetric(horizontal: 80),height: 2,color: MyTheme.primaryColor,), itemCount: 114),
        )
      ],
    );
  }
}
