import 'package:medi_dos_app/core/Services/ApiServices.dart';
import 'package:medi_dos_app/features/Screen/App/Home/data/Domain/Service/ServicegetData.dart';
import 'package:medi_dos_app/features/Screen/App/Home/data/Model/ModelAllData.dart';


class GetdataServiceImpl implements GetdataService {
  final ApiService apiService;

  GetdataServiceImpl({required this.apiService});

  @override
  Future<List<Clinic>> getClinics() async {
    return await apiService.getClinics();
  }

  @override
  Future<Clinic> getClinicByName(String name) async {
    return await apiService.getClinicByName(name);
  }

  @override
  Future<void> createClinic(Clinic clinic) async {
    await apiService.createClinic(clinic);
  }
}
