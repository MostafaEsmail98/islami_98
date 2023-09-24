import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class themeData {
  static Color color1 = Color(0xFFB7935F);
  static ThemeData LightTheme = ThemeData(
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
        selectedItemColor: Colors.black),
  );
}
