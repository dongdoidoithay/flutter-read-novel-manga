import '/app/controllers/home_controller.dart';
import '/app/data/repository/index.dart';
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
