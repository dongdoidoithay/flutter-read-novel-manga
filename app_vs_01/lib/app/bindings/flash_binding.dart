import 'package:app_vs_01/app/controllers/flash_controller.dart';
import 'package:app_vs_01/app/data/repository/index.dart';
import 'package:get/get.dart';

class FlashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => FlashController(
        repository: Repository(),
      ),
    );
  }
}
