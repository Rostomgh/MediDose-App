import 'package:medi_dos_app/core/Services/ApiServices.dart';
import 'package:medi_dos_app/features/Auth/data/domain/service/ServiceAuth.dart';
// Corrected the path to ServiceAuth.dart
import 'package:medi_dos_app/features/Auth/data/model/UserModel.dart'; // Corrected the capitalization

class authRepo implements ServiceAuth {
  final ApiService apiService = ApiService();

  @override
  Future<UserModel> login(String email, String password) async {
    final response = await apiService.post(
      endPoint: 'login',
      query: {'email': email, 'password': password},
    );
    if (response.statusCode == 200) {
      try {
        return UserModel.fromJson(response.data);
      } catch (e) {
        throw Exception('Failed to parse user data: $e');
      }
    } else {
      print("Login Failed");
      throw Exception('Login Failed');
    }
  }
}
