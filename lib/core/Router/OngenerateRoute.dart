import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Router/ErrorRoute.dart';
import 'package:medi_dos_app/core/Widgets/NavBar.dart';
import 'package:medi_dos_app/features/Auth/Login.dart';
import 'package:medi_dos_app/features/Auth/Signin.dart';
import 'package:medi_dos_app/features/Screen/Forget%20Password/Conformation.dart';
import 'package:medi_dos_app/features/Screen/Forget%20Password/ForgetPassword.dart';
import 'package:medi_dos_app/features/Screen/Forget%20Password/Newpassword.dart';
import 'package:medi_dos_app/features/Screen/App/BloodScreen.dart';
import 'package:medi_dos_app/features/Screen/App/ClinicsScreen.dart';
import 'package:medi_dos_app/features/Screen/App/Home/HomeScreen.dart';
import 'package:medi_dos_app/features/Screen/App/PharmacyScreen.dart';
import 'package:medi_dos_app/features/Screen/App/RaportScreen.dart';
import 'package:medi_dos_app/core/Animation/Logo.dart';
import 'package:medi_dos_app/features/Screen/App/ReservationScreen.dart';
import 'package:medi_dos_app/features/Screen/App/veterinary.dart';

import '../../features/Screen/App/Gmap.dart';

class AppRoute {
  Route? OnGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/Logo':
        return MaterialPageRoute(builder: (_) => const LogoP());
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginP());
      case '/Create':
        return MaterialPageRoute(builder: (_) => const SignIn());
      case 'ForgotPassword':
        return MaterialPageRoute(builder: (_) => const ForgotPasswordP());
      case 'ConformationPassword':
        return MaterialPageRoute(builder: (_) => const ConformationPasswordP());
      case 'newPassword':
        return MaterialPageRoute(builder: (_) => const NewPasswordP());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeP());
      case '/nav':
        return MaterialPageRoute(builder: (_) => const NavBar());
      case '/raport':
        return MaterialPageRoute(builder: (_) => const RaportP());
      case '/clinic':
        return MaterialPageRoute(builder: (_) => const ClinicsP());
      case '/map':
        return MaterialPageRoute(builder: (_) => const GmapP());
      case '/pharm':
        return MaterialPageRoute(builder: (_) => const PharmacyP());
      case 'veterinary':
        return MaterialPageRoute(builder: (_) => const veterinaryP());
      case '/reservation':
        return MaterialPageRoute(builder: (_) => const ReservationP());
        case '/blood':
        return MaterialPageRoute(builder: (_)=> const BloodP());
      default:
        return MaterialPageRoute(builder: (_) => const ErrorRoute());
    }
  }
}
