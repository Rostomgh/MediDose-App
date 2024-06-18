// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_dos_app/Buissness%20Logic/Nav_Bar_Bloc/nav_bar_bloc.dart';
import 'package:medi_dos_app/core/Router/OngenerateRoute.dart';
import 'package:medi_dos_app/core/Animation/Logo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NavBarBloc>(
      create: (context) => NavBarBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData.light(useMaterial3: true), // Ensure correct theme setup
        home: const LogoP(),
        onGenerateRoute: (settings) => AppRoute()
            .OnGenerateRoute(settings), // Ensure correct routing setup
      ),
    );
  }
}
