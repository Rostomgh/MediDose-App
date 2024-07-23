import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_dos_app/core/Theme/SizeBoxApp.dart';
import 'package:medi_dos_app/core/Widgets/CustomButton.dart';
import 'package:medi_dos_app/core/Widgets/CustomIcons.dart';
import 'package:medi_dos_app/core/Widgets/CustomInput.dart';
import 'package:medi_dos_app/features/Auth/presentation/Logic/Auth%20Signup/signup_bloc.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Account'),
        centerTitle: true,
      ),
      body: BlocConsumer<SignupBloc, SignupState>(
        listener: (context, state) {
          if (state is SignupSuccess) {
            Navigator.pushReplacementNamed(context, '/login');
          } else if (state is SignupError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error)),
            );
          }
        },
        builder: (context, state) {
          return ListView(
            children: [
              Form(
                key: key,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      CustomInput(
                        hint: 'Username',
                        mycontroller: username,
                        obc: false,
                        valid: (value) {
                          if (value == '') {
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
                          if (value == '') {
                            return 'Enter Email';
                          }
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
                          if (value == '') {
                            return 'Enter Phone Number';
                          }
                          if(value!.length > 10){
                              return 'Phone number cannot be more than 10 digits';
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
                          if (value == '') {
                            return 'Enter Password';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: AppSizes.sizeBut),
                      state is SignupLoding
                          ? const CircularProgressIndicator()
                          : CustomButton(
                              onpress: () {
                                if (key.currentState?.validate() ?? false) {
                                  BlocProvider.of<SignupBloc>(context).add(
                                    AuthSignup(
                                      username: username.text,
                                      email: email.text,
                                      password: password.text,
                                    ),
                                  );
                                }
                              },
                              textB: 'Create Account',
                            ),
                      const SizedBox(height: AppSizes.sizeBut),
                      const Text(
                        'Or',
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: AppSizes.sicon),
                      CustomIcons(
                        onpress1: () {},
                        onpress2: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
