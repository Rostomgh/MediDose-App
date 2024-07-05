import 'package:dio/dio.dart';
import 'package:medi_dos_app/core/helpers/DioHelper.dart';
import 'package:medi_dos_app/features/Screen/App/Home/data/Model/ModelAllData.dart';

class ApiService {
  ApiService();

  Future<Response> get(
      {required String endPoint, Map<String, dynamic>? query}) async {
    final response = await DioHelper.getData(url: endPoint);
    return response;
  }

  getClinics() {}

  getClinicByName(String name) {}

  createClinic(Clinic clinic) {}
}