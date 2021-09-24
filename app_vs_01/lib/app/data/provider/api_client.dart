import 'package:app_vs_01/share/values/constants.dart';
import 'package:dio/dio.dart' show Dio;

class ApiClient {
  var dio = Dio();
  getCallApi(methodName) async {
    try {
      await dio.get<String>(Constants.baseUrl + methodName).then((r) {
        return r.data;
      });
    } catch (_) {
      //log name
      return null;
    }
  }
}
