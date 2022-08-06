import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepOrange,
      fontFamily: GoogleFonts.poppins().fontFamily,
      brightness: Brightness.light,
      cardColor: Colors.white,
      accentColor: Colors.black,
      canvasColor: cream,
      buttonColor: orange,
      primaryColor: orange,
      appBarTheme: AppBarTheme(
          color: Colors.deepOrange,
          iconTheme: IconThemeData(color: orange),
          textTheme: Theme.of(context).textTheme.copyWith(
              headline6:
                  context.textTheme.headline6!.copyWith(color: orange))));
  static ThemeData darkTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepOrange,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      brightness: Brightness.dark,
      canvasColor: dc,
      buttonColor: doo,
      accentColor: d002,
      primaryColor: Colors.white,
      appBarTheme: AppBarTheme(
          color: Colors.black,
          iconTheme: IconThemeData(color: Colors.white),
          textTheme: Theme.of(context).textTheme.copyWith(
                headline6:
                    context.textTheme.headline6!.copyWith(color: Colors.white),
              )));

  static Color cream = Color(0xfff5f5f5);
  static Color dc = Vx.gray900;
  static Color orange = Colors.deepOrange;
  static Color doo = Vx.indigo900;
  static Color d002 = Vx.purple800;
}
