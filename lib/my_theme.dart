import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color primaryColor = Color(0xffB7935F);
  static const Color primaryDarkColor = Color(0xff141A2E);
  static const Color blackColor = Color(0xff242424);
  static const Color yellowColor = Colors.yellow;

  static ThemeData lightTheme = ThemeData(
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
            fontWeight: FontWeight.w300, fontSize: 20, color: blackColor),
        bodyMedium: GoogleFonts.elMessiri(
            fontWeight: FontWeight.w500, fontSize: 25, color: blackColor),
        bodyLarge: GoogleFonts.elMessiri(
            fontWeight: FontWeight.bold, fontSize: 30, color: primaryColor),
      ),
      appBarTheme: AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black, size: 30),
          color: Colors.transparent,
          centerTitle: true,
          titleTextStyle: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.bold, color: blackColor)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryColor,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: blackColor,
      ));
  static ThemeData darkTheme = ThemeData(
      primaryColor: primaryDarkColor,
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
            fontWeight: FontWeight.w300, fontSize: 20, color: Colors.white),
        bodyMedium: GoogleFonts.elMessiri(
            fontWeight: FontWeight.w500, fontSize: 25, color: yellowColor),
        bodyLarge: GoogleFonts.elMessiri(
            fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
      ),
      appBarTheme: AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white, size: 30),
          color: Colors.transparent,
          centerTitle: true,
          titleTextStyle: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryDarkColor,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: yellowColor,
        unselectedItemColor: Colors.white,
      ));
}
