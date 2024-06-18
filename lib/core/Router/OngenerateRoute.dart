import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Router/ErrorRoute.dart';
import 'package:medi_dos_app/core/Widgets/NavBar.dart';
import 'package:medi_dos_app/features/Auth/Login.dart';
import 'package:medi_dos_app/features/Auth/Signin.dart';
import 'package:medi_dos_app/features/Screen/Forget%20Password/Conformation.dart';
import 'package:medi_dos_app/features/Screen/Forget%20Password/ForgetPassword.dart';
import 'package:medi_dos_app/features/Screen/Forget%20Password/Newpassword.dart';
import 'package:medi_dos_app/features/Screen/Home/ClinicsScreen.dart';
import 'package:medi_dos_app/features/Screen/Home/HomeScreen.dart';
import 'package:medi_dos_app/features/Screen/Home/PharmacyScreen.dart';
import 'package:medi_dos_app/features/Screen/Home/RaportScreen.dart';
import 'package:medi_dos_app/core/Animation/Logo.dart';

import '../../features/Screen/Home/Gmap.dart';

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
        case '/raport':
        return MaterialPageRoute(builder: (_)=>const RaportP());
        case '/clinic':
        return MaterialPageRoute(builder: (_)=>const ClinicsP());
        case '/map':
        return MaterialPageRoute(builder: (_)=>const GmapP());
        case '/pharm':
        return MaterialPageRoute(builder: (_)=>const PharmacyP());
      default:
        return MaterialPageRoute(builder: (_) =>const ErrorRoute());
    }
  }
}
