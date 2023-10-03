import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';



class MyProvider extends ChangeNotifier{
  String language = "en";
  ThemeMode mode = ThemeMode.light;
   void ChangeLanguage(String lang){
     language=lang;
     notifyListeners();
   }
   void ChangeTheme(ThemeMode Mode){
     mode=Mode;
     notifyListeners();
   }
}