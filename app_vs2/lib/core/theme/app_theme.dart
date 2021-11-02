import 'package:app_vs2/core/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'app_color.dart';

class AppTheme {
  //
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    fontFamily: "Roboto",
    //primarySwatch: Colors.blue,
    // brightness: Brightness.light,
    canvasColor: Colors.white,
    highlightColor: Colors.amberAccent,
    scaffoldBackgroundColor: Palette.online,
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
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.black,
        fontSize: 14.sp,
      ),
      headline4: TextStyle(
        color: Colors.black54,
        fontSize: 16.sp,
      ),
      headline3: TextStyle(
        color: Colors.black,
        fontSize: 18.sp,
      ),
      headline2: TextStyle(
        color: Colors.black,
        fontSize: 20.sp,
      ),
      headline1: TextStyle(
        color: Colors.black,
        fontSize: 24.sp,
      ),
      subtitle1: TextStyle(
        fontSize: 16.sp,
        color: Colors.black,
      ),
      subtitle2: TextStyle(
        color: Colors.black,
        fontSize: 15.sp,
      ),
      bodyText2: TextStyle(
        color: Colors.black,
        fontSize: 13.sp,
      ),
      bodyText1: TextStyle(
        color: Colors.black,
        fontSize: 14.sp,
      ),
      overline: TextStyle(
        color: Colors.black,
        fontSize: 9.sp,
        letterSpacing: 0.1,
      ),
      caption: TextStyle(
        color: Colors.black,
        fontSize: 11.sp,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    fontFamily: "Dancing",
    scaffoldBackgroundColor: Palette.primary,
    highlightColor: Colors.amberAccent,
    brightness: Brightness.dark,
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Palette.primary,
    ),
    canvasColor: Palette.primary,
    appBarTheme: AppBarTheme(
      color: Palette.primary,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
    ),
    dividerColor: Colors.grey.shade800,
    bottomAppBarTheme: const BottomAppBarTheme(color: Colors.black),
    cardTheme: CardTheme(
      color: Palette.primary,
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
