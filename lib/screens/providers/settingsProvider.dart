import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class settingsProvider extends ChangeNotifier{
ThemeMode currentTheme = ThemeMode.light;
void setTheme(ThemeMode theme){
  currentTheme=theme;
  notifyListeners();
}
}