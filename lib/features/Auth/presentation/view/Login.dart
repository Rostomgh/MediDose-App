import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';
import 'package:medi_dos_app/core/Theme/SizeBoxApp.dart';
import 'package:medi_dos_app/core/Widgets/CustomButton.dart';
import 'package:medi_dos_app/core/Widgets/CustomInput.dart';
import 'package:medi_dos_app/core/Widgets/CustomTextRich.dart';
import 'package:medi_dos_app/features/Auth/presentation/Logic/Auth Login/auth_bloc.dart';
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

  void _showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  void _hideLoadingDialog(BuildContext context) {
    Navigator.of(context).pop();
  }

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
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthLoading) {
            _showLoadingDialog(context);
            print('AuthLoading state detected');
          } else if (state is AuthSuccess) {
            _hideLoadingDialog(context);
            Future.delayed(const Duration(milliseconds: 300), () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/nav', (route) => false);
              print('Navigating to /nav');
            });
          } else if (state is AuthError) {
            _hideLoadingDialog(context);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error)),
            );
            print('AuthError state detected: ${state.error}');
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
                          email.text,
                          password.text,
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
    );
  }
}
