import 'package:flutter/material.dart';
import 'app_color.dart';

class AppTheme {
  //
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    //primarySwatch: Colors.blue,
    // brightness: Brightness.light,
    canvasColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    primaryTextTheme:
        const TextTheme(headline6: TextStyle(color: Colors.black)),
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      titleTextStyle: TextStyle(color: Colors.black),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    cardTheme: const CardTheme(
      color: Colors.white,
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    textTheme: const TextTheme(
      headline6: TextStyle(
        color: Colors.black,
        fontSize: 20.0,
      ),
      headline4: TextStyle(
        color: Colors.black54,
      ),
      subtitle2: TextStyle(
        color: Colors.black,
        fontSize: 18.0,
      ),
      headline3: TextStyle(
        color: Colors.black,
      ),
      headline2: TextStyle(
        color: Colors.black,
      ),
      headline1: TextStyle(
        color: Colors.black,
      ),
      subtitle1: TextStyle(
        color: Colors.black,
      ),
      bodyText2: TextStyle(
        color: Colors.black,
      ),
      bodyText1: TextStyle(
        color: Colors.black,
      ),
      overline: TextStyle(
        color: Colors.black,
      ),
      caption: TextStyle(
        color: Colors.black,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.primary,
    brightness: Brightness.dark,
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: AppColors.primary,
    ),
    canvasColor: AppColors.primary,
    appBarTheme: AppBarTheme(
      color: AppColors.primary,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
    ),
    dividerColor: Colors.grey.shade800,
    bottomAppBarTheme: const BottomAppBarTheme(color: Colors.black),
    cardTheme: CardTheme(
      color: AppColors.primary,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    textTheme: const TextTheme(
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
      subtitle2: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
      ),
      headline4: TextStyle(
        color: Colors.white,
      ),
      headline3: TextStyle(
        color: Colors.white,
      ),
      headline2: TextStyle(
        color: Colors.white,
      ),
      headline1: TextStyle(
        color: Colors.white,
      ),
      subtitle1: TextStyle(
        color: Colors.white,
      ),
      bodyText2: TextStyle(
        color: Colors.white,
      ),
      bodyText1: TextStyle(
        color: Colors.white,
      ),
      overline: TextStyle(
        color: Colors.white,
      ),
      caption: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}
