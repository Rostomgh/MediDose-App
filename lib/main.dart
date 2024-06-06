import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Router/OngenerateRoute.dart';
import 'package:medi_dos_app/features/Screen/Logo.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home:const LogoP(),
      onGenerateRoute:(settings)=>AppRoute().OnGenerateRoute(settings),
    );
  }
}