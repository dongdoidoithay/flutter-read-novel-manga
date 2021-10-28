import 'package:flutter/material.dart';

class Constants {
  static Size getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static String baseUrl = 'https://app-novels-api.herokuapp.com/api/app-v1/';

  //key -storegate
  static String keyLang = 'KEY-LANG-SELECT';
}
