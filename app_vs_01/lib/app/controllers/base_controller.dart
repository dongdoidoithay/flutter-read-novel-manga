import 'package:app_vs_01/app/data/repository/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin BaseController {
  final GlobalKey<FormState> searchFormKey = GlobalKey<FormState>();
  late TextEditingController keywordController;
  callSearch() {
    print("Search");
  }
}
