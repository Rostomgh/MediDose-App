import 'package:medi_dos_app/features/Screen/App/Home/data/Model/ModelAllData.dart';

abstract class GetdataService {
  Future<List<Clinic>> getClinics();
  Future<Clinic> getClinicByName(String name);
  Future<void> createClinic(Clinic clinic);
}
