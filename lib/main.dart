import 'package:flutter/material.dart';
import 'package:islami/detialsAhadeth.dart';
import 'package:islami/home.dart';
import 'package:islami/detialsSura.dart';
import 'package:islami/themeData.dart';

void main() {
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Home.routeName,
        routes: {
          Home.routeName: (context) => Home(),
         DeSura.routeName:(context) => DeSura(),
          AhadethDetails.routeName :(context) => AhadethDetails()
        },
        theme:themeData.LightTheme);
  }
}
