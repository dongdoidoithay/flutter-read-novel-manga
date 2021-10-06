import 'package:flutter/material.dart';

mixin BaseController {
  final GlobalKey<FormState> searchFormKey = GlobalKey<FormState>();
  late TextEditingController keywordController;
  callSearch() {
    // ignore: avoid_print
    print("Search");
  }
}
