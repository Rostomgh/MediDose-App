import 'package:flutter/foundation.dart';

class UserModel {
  final String? username;
  final String? email;

  final String? token;

  UserModel({
    this.username,
    this.email,
    this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      username: json['username'] as String?,
      email: json['email'] as String?,
      token: json['token'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'email': email,
      'token': token,
    };
  }
}
