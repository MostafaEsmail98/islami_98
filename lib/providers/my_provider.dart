import 'package:flutter/material.dart';
import 'package:islami/sharedPrefs.dart';
import 'package:shared_preferences/shared_preferences.dart';



class MyProvider extends ChangeNotifier{
  String language = "en";
  ThemeMode mode = ThemeMode.light;

  void inti()async{
    String? lang=SharedPrefs.getLang();
    ChangeLanguage(lang??"en");
    String? theme = SharedPrefs.getTheme();
    if (theme=="light"){
      ChangeTheme(ThemeMode.light);
    }
    else{
      ChangeTheme(ThemeMode.dark);
    }
  }

   void ChangeLanguage(String lang){
     language=lang;
     SharedPrefs.setLang(lang);
     notifyListeners();
   }
   void ChangeTheme(ThemeMode Mode){
     mode=Mode;
     if (Mode==ThemeMode.light){
       SharedPrefs.setTheme("light");
     }else{
       SharedPrefs.setTheme("dark");
     }
     notifyListeners();
   }
}