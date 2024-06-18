import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:medi_dos_app/features/Screen/onboarding/Onboarding.dart';

class LogoP extends StatefulWidget {
  const LogoP({super.key});

  @override
  State<LogoP> createState() => _LogoPState();
}

class _LogoPState extends State<LogoP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSplashScreen(
          splashTransition: SplashTransition.fadeTransition,
          splash: Image.asset('assets/Logo/Logo.jpg',width: 300,height: 300,),
          nextScreen:const OnboardingP(),),
          
      ),

      
    );
  }
}