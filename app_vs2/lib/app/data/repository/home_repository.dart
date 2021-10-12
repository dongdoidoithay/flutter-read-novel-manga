import 'dart:convert';

import '/app/data/models/models.dart';
import '/app/data/provider/api_client.dart';

class HomeRepository {
  ApiClient apiClient = ApiClient();

  List<LangModel> parseLang(String responseBody) {
    // TODO: responseBody==""
    // CHECKALERT: responseBody==""
    final res = jsonDecode(responseBody);
    final parsed = res.cast<Map<String, dynamic>>();
    return parsed.map<LangModel>((json) => LangModel.fromJson(json)).toList();
  }

  List<Documents> parseDocument(String responseBody) {
    // TODO: responseBody==""
    // CHECKALERT: responseBody==""
    final res = jsonDecode(responseBody);
    final parsed = res["arrSlide"].cast<Map<String, dynamic>>();
    final testlist =
        parsed.map<Documents>((json) => Documents.fromJson(json)).toList();

    return testlist;
  }

  Future<List<LangModel>> getAllCountry() async {
    var datajson = await apiClient.getCallApi('AllCountry');
    //print(datajson);
    return parseLang(datajson);
  }

  Future<void> getHome(
      String? cate, String? lang, List<Documents> slide) async {
    cate = cate ?? "novels";
    lang = lang ?? "en";
    var datajson = await apiClient.getCallApi('HomePage/' + lang + "/" + cate);

    slide.addAll(parseDocument(datajson));
    print('-->json: pro');
    print(slide.join("|"));
  }
}
