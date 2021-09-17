import 'package:flutter/material.dart';
import 'package:todo_app/utility/constant.dart';

class MyThemeData {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: kDarkColor,
    primaryColor: kGreyColor,
    colorScheme: const ColorScheme.dark(),
    iconTheme: const IconThemeData(color: kCylanColor),
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: kCylanColor),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: kLightColor,
    primaryColor: kAppBarColor,
    colorScheme: const ColorScheme.light(),
    iconTheme: const IconThemeData(color: Color(0xFFF9B642)),
    appBarTheme: const AppBarTheme(backgroundColor: kAppBarColor),
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: kGreyColor),
  );
}
