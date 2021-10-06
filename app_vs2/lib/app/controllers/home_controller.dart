import '/app/data/models/lang_model.dart';
import 'package:get/get.dart';

import 'base_controller.dart';
import '/app/data/repository/index.dart';

class HomeController extends GetxController with BaseController {
  final Repository repository;
  HomeController({required this.repository}) : assert(repository != null);
  //final langList = <LangModel>[].obs;
  //final _langItem = LangModel().obs;
  var langList = <LangModel>[].obs;
  var langItem = LangModel().obs;

  @override
  void onInit() {
    getContry();
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
    // ignore: avoid_print
    print("search home");
    repository.flashRepository.printError();
  }

  void getContry() async {
    /*   repository.homeRepository
        .getAllCountry()
        .then((value) => ({langList.value = value})); */
    var getLang = await repository.homeRepository.getAllCountry();
    if (getLang != null) langList.assignAll(getLang);
    update();
  }

  changeContry(value) {
    langItem.value = value;
    //load change country
  }
}
