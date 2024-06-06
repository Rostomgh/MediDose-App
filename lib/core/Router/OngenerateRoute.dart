import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Router/ErrorRoute.dart';
import 'package:medi_dos_app/features/Auth/Login.dart';
import 'package:medi_dos_app/features/Auth/Signin.dart';
import 'package:medi_dos_app/features/Screen/Logo.dart';

class AppRoute {
  Route? OnGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/Logo':
        return MaterialPageRoute(builder: (_) =>const LogoP());
        case '/login':
        return MaterialPageRoute(builder: (_) =>const LoginP());
        case '/Create':
        return MaterialPageRoute(builder: (_) =>const SignIn());
      default:
        return MaterialPageRoute(builder: (_) =>const ErrorRoute());
    }
  }
}
