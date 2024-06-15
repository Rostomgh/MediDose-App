import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Router/ErrorRoute.dart';
import 'package:medi_dos_app/core/Widgets/NavBar.dart';
import 'package:medi_dos_app/features/Auth/Login.dart';
import 'package:medi_dos_app/features/Auth/Signin.dart';
import 'package:medi_dos_app/features/Screen/Forget%20Password/Conformation.dart';
import 'package:medi_dos_app/features/Screen/Forget%20Password/ForgetPassword.dart';
import 'package:medi_dos_app/features/Screen/Forget%20Password/Newpassword.dart';
import 'package:medi_dos_app/features/Screen/Home/HomeScreen.dart';
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
        case 'ForgotPassword':
        return MaterialPageRoute(builder: (_)=>const ForgotPasswordP());
        case 'ConformationPassword':
        return MaterialPageRoute(builder: (_)=>const ConformationPasswordP());
        case 'newPassword':
        return MaterialPageRoute(builder: (_)=>const NewPasswordP());
        case '/home':
        return MaterialPageRoute(builder: (_)=>const HomeP());
        case '/nav':
        return MaterialPageRoute(builder: (_)=>const NavBar());
      default:
        return MaterialPageRoute(builder: (_) =>const ErrorRoute());
    }
  }
}
