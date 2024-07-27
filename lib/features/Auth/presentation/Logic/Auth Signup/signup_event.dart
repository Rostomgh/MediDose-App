part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent {}

class AuthSignup extends SignupEvent {
  final String username;
  final String email;
  final String password;
  

  AuthSignup(
     this.email,
     this.password,
     this.username,
  );
}
