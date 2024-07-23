import 'package:flutter/foundation.dart';

class UserModel {
  final String? name;
  final String? email;
  final String? password;
  final String? token;

  UserModel({
    this.name,
    this.email,
    this.password,
    this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      token: json['token'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'token': token,
    };
  }
}
