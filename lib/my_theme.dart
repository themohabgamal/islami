import 'package:flutter/material.dart';

class MyTheme{
  static final Color primaryColor=const Color(0xFFB7935F);
  static final Color secondaryColor=const Color(0xFF1A0000);
  static final Color yellow=const Color(0xFFFACC1D);
  static final Color blue=const Color(0xFF141A2E);
  static ThemeData lightTheme=ThemeData(
    bottomSheetTheme:BottomSheetThemeData(
      backgroundColor: Colors.white,
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
      )
    ),
    cardColor: Colors.white,
    textTheme: const TextTheme(
      headline6: TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),headline4: TextStyle(
    fontSize: 28,
    color: Colors.black,
    ),subtitle2: TextStyle(
      fontSize: 14,
      color:Colors.black,
    )
    ),
    canvasColor: MyTheme.primaryColor,
      iconTheme: const IconThemeData(color: Colors.black),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: MyTheme.secondaryColor,
        )
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme:IconThemeData(color:MyTheme.secondaryColor,size: 36),
        selectedLabelStyle: TextStyle(color: MyTheme.secondaryColor),
        selectedItemColor: MyTheme.secondaryColor,
        unselectedItemColor: Colors.white,
        unselectedIconTheme: const IconThemeData(size: 24),
        showSelectedLabels: true,
        showUnselectedLabels: false,
      )
  );
  static ThemeData darkTheme=ThemeData(
      bottomSheetTheme:BottomSheetThemeData(
          backgroundColor: MyTheme.blue,
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
          )
      ),
    cardColor: blue,
      textTheme: const TextTheme(
          headline6: TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),headline4: TextStyle(
        fontSize: 28,
        color: Colors.white,
      ),subtitle2: TextStyle(
        fontSize: 14,
        color:Colors.white,
      )
      ),
      canvasColor: MyTheme.blue,
      iconTheme: const IconThemeData(color: Colors.white),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.white,
          )
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme:IconThemeData(color:MyTheme.yellow,size: 36),
        selectedItemColor: MyTheme.yellow,
        unselectedItemColor: Colors.white,
        unselectedIconTheme: const IconThemeData(size: 24),
        showSelectedLabels: true,
        showUnselectedLabels: false,
      )
  );
}