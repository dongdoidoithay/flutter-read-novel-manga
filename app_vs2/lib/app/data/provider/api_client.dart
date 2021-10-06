import '/core/values/constants.dart';
import 'package:dio/dio.dart';

class ApiClient {
  var dio = Dio();
  Future<String> getCallApi(methodName) async {
    try {
      Response response = await dio.get<String>(Constants.baseUrl + methodName);
      // ignore: avoid_print
      //print(response.data);
      // ignore: avoid_print
      //print(response.headers);
      // ignore: avoid_print
      // ignore: avoid_print
      // print(response.statusCode);
      return response.data;
    } catch (_) {
      //log name
      return '';
    }
  }
}
