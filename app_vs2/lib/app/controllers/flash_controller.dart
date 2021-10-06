import 'package:get/get.dart';

import 'base_controller.dart';
import '/app/data/repository/index.dart';

class FlashController extends GetxController with BaseController {
  @override
  void onClose() {}

  @override
  callSearch() async {
    print("search home");
    repository.flashRepository.printError();
  }

  final Repository repository;
  FlashController({required this.repository}) : assert(repository != null);
}
