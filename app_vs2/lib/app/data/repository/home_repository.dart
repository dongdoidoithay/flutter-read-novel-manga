import 'dart:convert';

import '/app/data/models/lang_model.dart';
import '/app/data/provider/api_client.dart';

class HomeRepository {
  ApiClient apiClient = ApiClient();

  List<LangModel> parseLang(String responseBody) {
    final res = jsonDecode(responseBody);
    final parsed = res.cast<Map<String, dynamic>>();
    return parsed.map<LangModel>((json) => LangModel.fromJson(json)).toList();
  }

  Future<List<LangModel>> getAllCountry() async {
    var datajson = await apiClient.getCallApi('AllCountry');
    return parseLang(datajson);
  }
}
