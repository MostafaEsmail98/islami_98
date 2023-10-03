import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class themeData {
  static Color color1 = Color(0xFFB7935F);
  static ThemeData LightTheme = ThemeData(
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xFFB7935F),
        onPrimary: Colors.white,
        secondary: Colors.black,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        background: Color(0xFFB7935F),
        onBackground: Colors.white,
        surface: Color(0xFFB7935F),
        onSurface: Colors.white),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        iconTheme: IconThemeData(color: color1)),
    textTheme: TextTheme(
      bodySmall: GoogleFonts.elMessiri(
          color: Color(0xFF242424), fontSize: 20, fontWeight: FontWeight.w400),
      bodyMedium: GoogleFonts.elMessiri(
          color: Color(0xFF242424), fontSize: 25, fontWeight: FontWeight.w700),
      bodyLarge: GoogleFonts.elMessiri(
          color: Color(0xFF242424), fontSize: 30, fontWeight: FontWeight.bold),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white),
  );
  static ThemeData DarkTheme = ThemeData(
    colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: Color(0xFFFACC1D),
        onPrimary: Colors.white,
        secondary: Colors.black,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        background: Color(0xFF141A2E),
        onBackground: Colors.white,
        surface: Color(0xFFFACC1D),
        onSurface: Colors.white),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white )),
    textTheme: TextTheme(
      bodySmall: GoogleFonts.elMessiri(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
      bodyMedium: GoogleFonts.elMessiri(
          color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
      bodyLarge: GoogleFonts.elMessiri(
          color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Color(0xffFACC1D),
        unselectedItemColor: Colors.white),
  );
}
