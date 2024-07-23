import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';
import 'package:medi_dos_app/core/Theme/SizeBoxApp.dart';
import 'package:medi_dos_app/core/Widgets/CustomButton.dart';
import 'package:medi_dos_app/core/Widgets/CustomInput.dart';
import 'package:medi_dos_app/core/Widgets/CustomTextRich.dart';
import 'package:medi_dos_app/features/Auth/presentation/Logic/Auth%20Logic/auth_bloc.dart';
import 'package:medi_dos_app/features/Auth/data/domain/repo/ServiceAuthImpl.dart';

class LoginP extends StatefulWidget {
  const LoginP({super.key});

  @override
  State<LoginP> createState() => _LoginPState();
}

class _LoginPState extends State<LoginP> {
  final key = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Log in',
          style: TextStyle(
              fontSize: 20,
              color: AppColors.textcolor,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: BlocProvider(
        create: (context) => AuthBloc(AuthRepo()),
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is AuthLoading) {
              // Show loading indicator
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            } else if (state is AuthSuccess) {
              
               Navigator.of(context).pop(); 
              Navigator.pushReplacementNamed(context, '/nav');
            } else if (state is Autherror) {
              print('errrrrrrrrr');
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.error)),
              );
            }
          },
          child: Form(
            key: key,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  CustomInput(
                    obc: false,
                    hint: 'Email',
                    mycontroller: email,
                    valid: (value) {
                      if (value == '') {
                        return 'Enter Email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: AppSizes.sizeInput),
                  CustomInput(
                    obc: true,
                    hint: 'Password',
                    mycontroller: password,
                    valid: (value) {
                      if (value == '') {
                        return 'Enter Password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: AppSizes.sizeInput),
                  CustomButton(
                    onpress: () {
                      if (key.currentState!.validate()) {
                        BlocProvider.of<AuthBloc>(context).add(
                          AuthLogin(
                            email: email.text,
                            password: password.text,
                          ),
                        );
                      }
                    },
                    textB: 'Login',
                  ),
                  const SizedBox(height: AppSizes.stext),
                  CustomTextRich(
                    onTapC: () {
                      Navigator.pushNamed(context, '/Create');
                    },
                    onTapP: () {
                      Navigator.pushNamed(context, 'ForgotPassword');
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
