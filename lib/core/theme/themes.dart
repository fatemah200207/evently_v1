import 'package:flutter/material.dart';

import 'colors.dart';

class appTheme {
  appTheme._();
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: appColors.lightBackground,
    primaryColor: appColors.primaryColor,
    primaryColorLight: Colors.white,
    primaryColorDark: Colors.black,
    textTheme: TextTheme(
      bodySmall: TextStyle(
        color: Colors.black,
        fontSize: 14,
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
        fontSize: 18,
      ),
      bodyLarge: TextStyle(
        color: Colors.black,
        fontSize: 20,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: appColors.darkBackground,
    primaryColor: appColors.primaryColor,
    primaryColorLight: Colors.black,
    primaryColorDark: Colors.white,
    textTheme: TextTheme(
      bodySmall: TextStyle(
        color: Colors.white,
        fontSize: 14,
      ),
      bodyMedium: TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
      bodyLarge: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    ),

  );

}