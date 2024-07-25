import 'package:medi_dos_app/features/Screen/App/Home/data/Model/ModelAllData.dart';

abstract class ClinicState {
  @override
  List<Object?> get props => [];
}

class ClinicInitial extends ClinicState {}

class ClinicLoading extends ClinicState {}

class ClinicLoaded extends ClinicState {
  final List<ClinicModel> clinics;

  ClinicLoaded(this.clinics);

  @override
  List<Object?> get props => [clinics];
}

class ClinicError extends ClinicState {
  final String message;

  ClinicError(this.message);

  @override
  List<Object?> get props => [message];
}