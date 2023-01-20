import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/screens/hadeth/hadeth_details.dart';
import 'package:islami/screens/hadeth/hadeth_details_args.dart';
import 'package:islami/screens/hadeth/hadeth_screen.dart';
import 'package:islami/screens/home_screen.dart';
import 'package:islami/screens/providers/settingsProvider.dart';
import 'package:islami/screens/sura_details/quran_screen.dart';
import 'package:islami/screens/radio_screen.dart';
import 'package:islami/screens/sebha/sebha_screen.dart';
import 'package:islami/screens/sura_details/sura_details.dart';
import 'package:provider/provider.dart';
import 'screens/providers/settingsProvider.dart';


void main() {
  runApp(ChangeNotifierProvider(
      create:(context) => settingsProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sp = Provider.of<settingsProvider>(context);
    return MaterialApp(
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode:sp.currentTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        homeScreen.routeName: (_) => homeScreen(),
        suraDetails.routeName: (_) => suraDetails(),
        hadethDetails.routeName: (_) => hadethDetails(),
      },
      initialRoute: homeScreen.routeName,
    );
  }
}
