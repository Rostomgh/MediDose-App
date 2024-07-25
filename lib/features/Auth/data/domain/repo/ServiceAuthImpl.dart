import 'package:dio/dio.dart';
import 'package:medi_dos_app/core/Services/ApiServices.dart';
import 'package:medi_dos_app/core/Services/Endpoint.dart';
import 'package:medi_dos_app/features/Auth/data/domain/service/ServiceAuth.dart';
import 'package:medi_dos_app/features/Auth/data/model/UserModel.dart';

class AuthRepo implements ServiceAuth {
  final ApiService apiService = ApiService();

  @override
  Future<UserModel> login(String email, String password) async {
    final response = await apiService.post(
      endPoint: Endpoint.Login,
      query: {'email': email, 'password': password},
    );

    if (response.statusCode == 200) {
      try {
        print("Response data: ${response.data}");
        return UserModel.fromJson(response.data);
      } catch (e) {
        throw Exception('Failed to parse user data: $e');
      }
    } else {
      throw Exception('Login Failed: ${response.statusCode}');
    }
  }

  @override
  Future<UserModel> Signup(String username, String email, String password) async {
    final response = await apiService.post(
      endPoint: Endpoint.SignUp,
      query: {'username': username, 'email': email, 'password': password},
    );

    if (response.statusCode == 200) {
      try {
        return UserModel.fromJson(response.data);
      } catch (e) {
        throw Exception('Failed to parse user data: $e');
      }
    } else {
      throw Exception('Signup Failed: ${response.statusCode}');
    }
  }
}
