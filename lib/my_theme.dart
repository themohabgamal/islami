import 'package:flutter/material.dart';

class MyTheme{
  static final Color primaryColor=Color(0xFFB7935F);
  static final Color secondaryColor=Color(0xFF242424);
  static ThemeData lightTheme=ThemeData(
    canvasColor: MyTheme.primaryColor,
      iconTheme: IconThemeData(color: Colors.black),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme:IconThemeData(color:MyTheme.secondaryColor,size: 36),
        selectedLabelStyle: TextStyle(color: MyTheme.secondaryColor),
        selectedItemColor: MyTheme.secondaryColor,
        unselectedItemColor: Colors.white,
        unselectedIconTheme: IconThemeData(size: 24),
        showSelectedLabels: true,
        showUnselectedLabels: false,
      )
  );
}