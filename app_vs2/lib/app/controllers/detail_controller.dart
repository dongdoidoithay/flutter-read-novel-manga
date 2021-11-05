import 'package:app_vs2/app/data/models/document_model.dart';

import 'package:get/get.dart';

import 'base_controller.dart';
import '/app/data/repository/index.dart';

class DetailController extends GetxController with BaseController {
  final Repository repository;
  DetailController({required this.repository}) : assert(repository != null);
  //loading
  var loading = true.obs;
  var suggestList = <Documents>[].obs;
  //loading group
  var detailDocument = Documents().obs;

  @override
  void onClose() {}

  @override
  callSearch() {
    // ignore: avoid_print
    print("search home");
    repository.flashRepository.printError();
  }

  void loadInfo(String detailId, String cate) async {
    var _suggestList = <Documents>[];
    var _detailDocument = Documents();
    await repository.detailRepository
        .getDetail(detailId, cate, _suggestList, _detailDocument);
    if (_suggestList.isNotEmpty) {
      loading.value = false;
      suggestList.assignAll(_suggestList);
    }
    detailDocument.value = _detailDocument;
  }
}
