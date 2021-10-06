import '/app/controllers/flash_controller.dart';
import '/app/data/repository/index.dart';
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
