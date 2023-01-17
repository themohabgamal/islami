import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/screens/hadeth/hadeth_details.dart';
import 'package:islami/screens/hadeth/hadeth_details_args.dart';
import 'package:islami/screens/hadeth/hadeth_screen.dart';
import 'package:islami/screens/home_screen.dart';
import 'package:islami/screens/quran_screen.dart';
import 'package:islami/screens/radio_screen.dart';
import 'package:islami/screens/sebha_screen.dart';
import 'package:islami/screens/sura_details/sura_details.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      routes:{
        homeScreen.routeName:(_)=>homeScreen(),
        suraDetails.routeName:(_)=>suraDetails(),
        hadethDetails.routeName:(_)=>hadethDetails(),

      }
      ,
      initialRoute:homeScreen.routeName ,
    );
  }
}
