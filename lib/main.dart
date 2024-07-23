import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_dos_app/Buissness%20Logic/Nav_Bar_Bloc/nav_bar_bloc.dart';
import 'package:medi_dos_app/core/Router/OngenerateRoute.dart';
import 'package:medi_dos_app/core/Animation/Logo.dart';
import 'package:medi_dos_app/core/helpers/BlocObserve.dart';
import 'package:medi_dos_app/core/helpers/DioHelper.dart';
import 'package:medi_dos_app/features/Auth/presentation/Logic/Auth%20Login/auth_bloc.dart';
import 'package:medi_dos_app/features/Auth/data/domain/repo/ServiceAuthImpl.dart';
import 'package:medi_dos_app/features/Auth/presentation/Logic/Auth%20Signup/signup_bloc.dart'; // Add this import

void main() async {
  DioHelper.init();
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavBarBloc>(
          create: (context) => NavBarBloc(),
        ),
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(AuthRepo()), 
        ),
        BlocProvider<SignupBloc>(create: (context) => SignupBloc(AuthRepo())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true), 
        home: const LogoP(),
        onGenerateRoute: (settings) => AppRoute().OnGenerateRoute(settings), 
      ),
    );
  }
}
