import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const firstColor = Color(0xffF03048);
  static const secondColor = Color(0xff17191D);
  ThemeData getTheme(BuildContext context) => ThemeData(
        colorSchemeSeed: firstColor,
        fontFamily: GoogleFonts.jost().fontFamily,
        scaffoldBackgroundColor: secondColor,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
        appBarTheme: const AppBarTheme(
          backgroundColor: secondColor,
          titleTextStyle: TextStyle(
            color: Colors.white,
          ),
          actionsIconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      );
}
