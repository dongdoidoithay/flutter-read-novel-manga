//import 'package:get_storage/get_storage.dart';

import 'app/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'app/bindings/home_binding.dart';
import 'app/routers/app_pages.dart';
import 'app/routers/app_routers.dart';
import 'core/values/languages/values.dart';
import 'core/theme/app_color.dart';
import 'core/theme/app_theme.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: AppColors.primary.withOpacity(1),
  ));
  //set storage
  //await GetStorage.init();
  //

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialBinding: HomeBinding(),
    initialRoute: Routes.dashboard,
    theme: AppTheme.lightTheme,
    defaultTransition: Transition.fade,
    getPages: AppPages.pages,
    //home: const HomePage(),
    locale: const Locale('vi', 'VN'),
    translationsKeys: AppTranslation.translations,
    //translations: FuncAppTranslations(),
  ));
}
