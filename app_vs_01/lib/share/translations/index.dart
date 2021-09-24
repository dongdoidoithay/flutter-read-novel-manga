import 'package:get/get_navigation/src/root/internacionalization.dart';

import 'vi_VN/vi_vn_translations.dart';
import 'en_US/en_us_translation.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> translations = {
    'vi_VN': viVN,
    'en_US': enUs,
  };
}

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => AppTranslation.translations;
}
