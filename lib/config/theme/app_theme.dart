import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const firstColor = Color(0xffF03048);
  static const secondColor = Color(0xff17191D);
  static const unselectedColor = Color(0xff939191);
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
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          showUnselectedLabels: true,
          unselectedItemColor: unselectedColor,
          selectedItemColor: firstColor,
          backgroundColor: secondColor,
          selectedIconTheme: IconThemeData(
            color: firstColor,
            size: 30,
          ),
          selectedLabelStyle: TextStyle(
            color: Colors.amber,
          ),
          unselectedIconTheme: IconThemeData(
            color: unselectedColor,
            size: 30,
          ),
          unselectedLabelStyle: TextStyle(
            color: unselectedColor,
          ),
        ),
      );
}
