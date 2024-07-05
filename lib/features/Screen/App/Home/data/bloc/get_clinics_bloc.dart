import 'package:bloc/bloc.dart';
import 'package:medi_dos_app/core/helpers/DioHelper.dart';
import 'package:medi_dos_app/features/Screen/App/Home/data/Model/ModelAllData.dart';
import 'package:medi_dos_app/features/Screen/App/Home/data/bloc/get_clinics_event.dart';
import 'package:medi_dos_app/features/Screen/App/Home/data/bloc/get_clinics_state.dart';

class ClinicBloc extends Bloc<ClinicEvent, ClinicState> {
  final DioHelper dioHelper;

  ClinicBloc({required this.dioHelper}) : super(ClinicInitial());

  @override
  Stream<ClinicState> mapEventToState(ClinicEvent event) async* {
    if (event is FetchClinics) {
      emit(ClinicLoading ());
      try {
        final response = await DioHelper.getData(url: 'clinics'); // Adjust URL as per your API
        List<Clinic> clinics = (response.data as List).map((clinicJson) => Clinic.fromJson(clinicJson)).toList();
        emit(ClinicLoaded(clinics)) ;
      } catch (e) {
        emit(ClinicError('Failed to fetch clinics: $e')) ;
      }
    }
  }
}