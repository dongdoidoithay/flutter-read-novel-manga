import 'package:get/get.dart';
import 'app_routers.dart';
import '/app/pages/home/home_page.dart';
import '/app/bindings/home_binding.dart';

class AppPages extends Routes {
  static final pages = [
    GetPage(
      name: Routes.dashboard,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
