import 'package:flutter/material.dart';

class Palette {
  static const Color scaffold = Color(0xFFF0F2F5);
  static const Color facebookBlue = Color(0xFF1777F2);
  static const Color online = Color(0xFF4BCB1F);
  static const Color online1 = Color(0xFF4BCB1F);

  static const Color primary = Color(0xFF93B5C6);
  static const Color primaryDark = Color(0xFFC9CCD5);
  static const Color primaryLight = Color(0xFFE4D8DC);
  static const Color primaryVeryLight = Color(0xFFD5E4F1);
  static const Color accent = Color(0xfff7892b);
  static const Color accentDark = Color(0xfff7892b);
  static const Color accentLight = Color(0xfff7892b);
  static const Color box1 = Color(0xFFFFD558);

  static const Color grey_3 = Color(0xFFf7f7f7);
  static const Color grey_5 = Color(0xFFf2f2f2);
  static const Color grey_10 = Color(0xFFe6e6e6);
  static const Color grey_20 = Color(0xFFcccccc);
  static const Color grey_40 = Color(0xFF999999);
  static const Color grey_60 = Color(0xFF666666);
  static const Color grey_80 = Color(0xFF37474F);
  static const Color grey_90 = Color(0xFF263238);
  static const Color grey_95 = Color(0xFF1a1a1a);
  static const Color grey_100_ = Color(0xFF0d0d0d);
  static const Color grey_300 = Color(0xFFE0E0E0);
  static const Color grey_200 = Color(0xFFEEEEEE);

  static const LinearGradient createRoomGradient = LinearGradient(
    colors: [Color(0xFF496AE1), Color(0xFFCE48B1)],
  );

  static const LinearGradient storyGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.transparent, Colors.black26],
  );

  static const LinearGradient boxGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.transparent, online],
  );
  //FFF2CC
  static const LinearGradient boxNewUpdateGradient = LinearGradient(
    // begin: Alignment.topCenter,
    //end: Alignment.bottomCenter,
    colors: [grey_3, grey_10, grey_20, grey_40],
  );
  static const LinearGradient boxGradientSlide = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.transparent, grey_200],
  );

  static const LinearGradient boxNewUpdateGridGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    //colors: [scaffold, grey_10, grey_20, accent],
    colors: [Color(0xFF496AE1), Color(0xFFCE48B1)],
  );
}
