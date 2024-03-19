import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeOptions {
  var lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    cardTheme: CardTheme(
      elevation: 0.6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
    ),
    primaryColorLight: const Color(0xff620000),
    brightness: Brightness.light,
    primaryColor: const Color(0xff620000),
    iconTheme: IconThemeData(
      color: Colors.grey[800],
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        color: const Color(0xff000101),
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      displayMedium: TextStyle(
        color: const Color(0xff000101),
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      bodyLarge: TextStyle(
        color: const Color(0xff000101),
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        color: const Color(0xff000101),
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 14,
      ),
      bodySmall: TextStyle(
        color: const Color(0xff000101),
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 12,
      ),
    ),
  );

  var darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: const Color(0xff101012),
    cardTheme: CardTheme(
      elevation: 0.6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
    ),
    brightness: Brightness.dark,
    primaryColorDark: const Color(0xff620000),
    primaryColor: const Color(0xff620000),
    iconTheme: IconThemeData(
      color: Colors.grey[800],
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
          color: Colors.white, fontFamily: GoogleFonts.poppins().fontFamily),
      displayMedium: TextStyle(
          color: Colors.white, fontFamily: GoogleFonts.poppins().fontFamily),
      bodyLarge: TextStyle(
          color: Colors.white, fontFamily: GoogleFonts.poppins().fontFamily),
      bodyMedium: TextStyle(
        color: Colors.white,
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 14,
      ),
    ),
  );
}
