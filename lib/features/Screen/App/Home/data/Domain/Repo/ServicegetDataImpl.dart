import 'package:medi_dos_app/core/Services/ApiServices.dart';
import 'package:medi_dos_app/core/Services/Endpoint.dart';
import 'package:medi_dos_app/features/Screen/App/Home/data/Domain/Service/ServicegetData.dart';
import 'package:medi_dos_app/features/Screen/App/Home/data/Model/ModelAllData.dart';


/*class GetdataServiceImpl implements GetdataService {
  final ApiService apiService;

  GetdataServiceImpl({required this.apiService});

  @override
  Future<List<ClinicModel>> getClinics() async {
  final response= await apiService.get(
    endPoint: Endpoint.GetClinic,

  );
    if (response.statusCode == 200) {
    
      try {
        
         return ClinicModel.fromJson(response.data);
          
      } catch (e) {
        throw Exception('Failed to parse user data: $e');
      }
    } else {
      print("Login Failed");
      throw Exception('Login Failed');
    }
  }


  /*Future<Clinic> getClinicByName(String name) async {
    return await apiService.getClinicByName(name);
  }

  @override
  Future<void> createClinic(Clinic clinic) async {
    await apiService.createClinic(clinic);
  }*/
}*/
