import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class settingsProvider extends ChangeNotifier{
ThemeMode currentTheme = ThemeMode.light;
String currentLang='en';
void setTheme(ThemeMode theme){
  currentTheme=theme;
  notifyListeners();
}
void changeLange(String lang){
  currentLang=lang;
  notifyListeners();
}
}