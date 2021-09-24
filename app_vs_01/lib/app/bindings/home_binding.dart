import 'package:app_vs_01/app/controllers/home_controller.dart';
import 'package:app_vs_01/app/data/repository/index.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        repository: Repository(),
      ),
    );
  }
}
