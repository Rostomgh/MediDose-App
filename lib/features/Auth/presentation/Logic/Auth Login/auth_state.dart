part of 'auth_bloc.dart';

@immutable
abstract  class AuthState {}

final class AuthInitial extends AuthState {}
final class AuthLoading extends AuthState {}

final class AuthSuccess extends AuthState {
  final UserModel user; 
  AuthSuccess(this.user);
}
final class AuthError extends AuthState {
  final String error;
  AuthError(this.error);
}