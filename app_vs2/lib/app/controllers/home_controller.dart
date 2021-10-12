import 'package:app_vs2/app/data/models/document_model.dart';

import '/app/data/models/lang_model.dart';
import 'package:get/get.dart';

import 'base_controller.dart';
import '/app/data/repository/index.dart';

class HomeController extends GetxController with BaseController {
  final Repository repository;
  HomeController({required this.repository}) : assert(repository != null);
  //loading lang
  var loading = true.obs;
  var langList = <LangModel>[].obs;
  var langItem = LangModel().obs;

//loading home
  var loadinghome = true.obs;
  var slideList = <Documents>[].obs;

  @override
  void onInit() {
    getContry();
    loadbycontry();
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
    var getLang = await repository.homeRepository.getAllCountry();
    if (getLang.isNotEmpty) {
      loading.value = false;
      langList.assignAll(getLang);
    }
    //update();
  }

  void loadbycontry() async {
    var _slidelist = <Documents>[];
    await repository.homeRepository.getHome("novels", "en", _slidelist);
    if (_slidelist.length > 0) slideList.assignAll(_slidelist);
  }

  void loadhome() async {}

  changeContry(value) {
    langItem.value = value;
    //load change country
  }
}
