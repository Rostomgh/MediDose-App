part of 'auth_bloc.dart';

@immutable
abstract  class AuthState {}

final class AuthInitial extends AuthState {}
final class AuthLoading extends AuthState {}

final class AuthSuccess extends AuthState {
  final UserModel user; 
  AuthSuccess(this.user);
}
final class Autherror extends AuthState {
  final String error;
  Autherror(this.error);
}