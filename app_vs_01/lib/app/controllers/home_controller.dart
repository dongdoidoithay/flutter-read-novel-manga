import 'package:app_vs_01/app/data/repository/index.dart';
import 'package:get/get.dart';

import 'base_controller.dart';

class HomeController extends GetxController with BaseController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  @override
  callSearch() {
    print("search home");
    repository.flashRepository.printError();
  }

  final Repository repository;
  HomeController({required this.repository}) : assert(repository != null);
}
