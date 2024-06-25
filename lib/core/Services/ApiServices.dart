import 'package:dio/dio.dart';
import 'package:medi_dos_app/core/helpers/DioHelper.dart';

class ApiService {
  ApiService();

  Future<Response> get(
      {required String endPoint, Map<String, dynamic>? query}) async {
    final response = await DioHelper.getData(url: endPoint);
    return response;
  }
}