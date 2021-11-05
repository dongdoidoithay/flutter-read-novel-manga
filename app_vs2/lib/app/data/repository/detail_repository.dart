import 'dart:convert';

import '/app/data/models/models.dart';
import '/app/data/provider/api_client.dart';

class DetailRepository {
  ApiClient apiClient = ApiClient();

  List<LangModel> parseLang(String responseBody) {
    // TODO: responseBody==""
    // CHECKALERT: responseBody==""
    final res = jsonDecode(responseBody);
    final parsed = res.cast<Map<String, dynamic>>();
    return parsed.map<LangModel>((json) => LangModel.fromJson(json)).toList();
  }

  List<Documents> parseDocument(String responseBody, String rootname) {
    // TODO: responseBody==""
    // CHECKALERT: responseBody==""
    final res = jsonDecode(responseBody);
    final parsed = res[rootname].cast<Map<String, dynamic>>();
    final testlist =
        parsed.map<Documents>((json) => Documents.fromJson(json)).toList();

    return testlist;
  }

  Documents parseDetailDocument(String responseBody, String rootname) {
    // TODO: responseBody==""
    // CHECKALERT: responseBody==""
    final res = jsonDecode(responseBody);
    final parsed = res[rootname].cast<Map<String, dynamic>>();
    final testlist = parsed.map<Documents>((json) => Documents.fromJson(json));

    return testlist;
  }

  Future<void> getDetail(String? detailId, String? lang,
      List<Documents> suggestList, Documents info) async {
    detailId = detailId ?? "_";
    lang = lang ?? "en";
    var datajson =
        await apiClient.getCallApi('Detail/' + detailId + "/" + lang);

    suggestList.addAll(parseDocument(datajson, "arrSuggest"));
    info = parseDetailDocument(datajson, "info");
  }
}
