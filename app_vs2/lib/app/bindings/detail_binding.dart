import '/app/controllers/detail_controller.dart';
import '/app/data/repository/index.dart';
import 'package:get/get.dart';

class DetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => DetailController(
        repository: Repository(),
      ),
    );
  }
}
