import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepOrange,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
          color: Colors.deepOrange,
          iconTheme: IconThemeData(color: Colors.white),
          textTheme: Theme.of(context).textTheme));
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );

  static Color cream = Color(0xfff5f5f5);
  static Color orange = Colors.deepOrange;
}
