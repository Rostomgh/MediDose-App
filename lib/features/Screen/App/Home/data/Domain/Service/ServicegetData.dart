import 'package:medi_dos_app/features/Screen/App/Home/data/Model/ModelAllData.dart';

abstract class GetdataService {
  Future<List<ClinicModel>> getClinics();
  //Future<ClinicModel> getClinicByName(String name);
  //Future<void> createClinic(ClinicModel clinic);
}
