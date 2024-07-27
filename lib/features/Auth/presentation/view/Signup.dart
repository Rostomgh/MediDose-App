import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_dos_app/core/Theme/SizeBoxApp.dart';
import 'package:medi_dos_app/core/Widgets/CustomButton.dart';
import 'package:medi_dos_app/core/Widgets/CustomIcons.dart';
import 'package:medi_dos_app/core/Widgets/CustomInput.dart';
import 'package:medi_dos_app/features/Auth/presentation/Logic/Auth Signup/signup_bloc.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final key = GlobalKey<FormState>();
  final TextEditingController username = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
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
        title: const Text('Create Account'),
        centerTitle: true,
      ),
      body: BlocListener<SignupBloc, SignupState>(
        listener: (context, state) {
          if (state is SignupLoding) {
            _showLoadingDialog(context);
          } else if (state is SignupSuccess) {
            _hideLoadingDialog(context);
            Navigator.pushReplacementNamed(context, '/login');
          } else if (state is SignupError) {
            _hideLoadingDialog(context);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error)),
            );
          }
        },
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            Form(
              key: key,
              child: Column(
                children: [
                  CustomInput(
                    hint: 'Username',
                    mycontroller: username,
                    obc: false,
                    valid: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter Username';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: AppSizes.sizeInput),
                  CustomInput(
                    hint: 'Email',
                    mycontroller: email,
                    obc: false,
                    valid: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter Email';
                      }
                      // Add additional email validation if needed
                      return null;
                    },
                  ),
                  const SizedBox(height: AppSizes.sizeInput),
                  CustomInput(
                    hint: 'Phone Number',
                    mycontroller: phone,
                    keyboardType: TextInputType.phone,
                    obc: false,
                    valid: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter Phone Number';
                      }
                      if (value.length != 10) {
                        return 'Phone number must be 10 digits';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: AppSizes.sizeInput),
                  CustomInput(
                    hint: 'Password',
                    mycontroller: password,
                    obc: true,
                    valid: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter Password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: AppSizes.sizeBut),
                  CustomButton(
                    onpress: () {
                      if (key.currentState!.validate()) {
                        BlocProvider.of<SignupBloc>(context).add(
                          AuthSignup(
                            username.text,
                            email.text,
                            password.text,
                          ),
                        );
                      }
                    },
                    textB: 'Create Account',
                  ),
                  const SizedBox(height: AppSizes.sizeBut),
                  const Text(
                    'Or',
                    style: TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: AppSizes.sicon),
                  CustomIcons(
                    onpress1: () {},
                    onpress2: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
