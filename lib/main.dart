
import 'package:flutter/material.dart';
import 'package:islami/detialsAhadeth.dart';
import 'package:islami/home.dart';
import 'package:islami/detialsSura.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:islami/sharedPrefs.dart';
import 'package:islami/themeData.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPrefs.prefs = await SharedPreferences.getInstance();
  runApp(MultiProvider(
    providers: [ ChangeNotifierProvider(create: (context) => MyProvider()..inti()
    ),],
    child: MyApp()))
  ;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      themeMode: provider.mode,

      locale: Locale(provider.language),
        title: 'Localizations Sample App',
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('en'), // English
          Locale('ar'), // Spanish
        ],
        debugShowCheckedModeBanner: false,
        initialRoute: Home.routeName,
        routes: {
          Home.routeName: (context) => Home(),
         DeSura.routeName:(context) => DeSura(),
          AhadethDetails.routeName :(context) => AhadethDetails()
        },
        theme:themeData.LightTheme,
        darkTheme: themeData.DarkTheme,
    );
  }
}
