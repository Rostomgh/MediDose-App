part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class AuthLogin extends AuthEvent {

  final String email;
  final String password;
 AuthLogin({required this.email, required this.password});
  
}
class AuthSignup extends AuthEvent {

  final String email;
  final String password;
  final String name;
  AuthSignup(this.email, this.password, this.name);
  
}
