part of 'signup_bloc.dart';

@immutable
abstract class SignupState {}

final class SignupInitial extends SignupState {}
final class SignupLoding extends SignupState {}
final class SignupSuccess extends SignupState {
final UserModel user;

  SignupSuccess({required this.user});

}
final class SignupError extends SignupState {
  final String error;
  SignupError({required this.error});
}
