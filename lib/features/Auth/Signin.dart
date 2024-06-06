import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Theme/SizeBoxApp.dart';
import 'package:medi_dos_app/core/Widgets/CustomButton.dart';
import 'package:medi_dos_app/core/Widgets/CustomIcons.dart';
import 'package:medi_dos_app/core/Widgets/CustomInput.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController FName = TextEditingController();
  final TextEditingController LName = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController Phone = TextEditingController();
  final TextEditingController Password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create account'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          CustomInput(
            hint: 'First Name',
            mycontroller: FName,
            obc: false,
            valid: (value) {
              if (value == '') {
                return 'Enter First Name';
              }
              return null;
            },
          ),
          const SizedBox(
            height: AppSizes.sizeInput,
          ),
          CustomInput(
            hint: 'Last Name',
            mycontroller: LName,
            obc: false,
            valid: (value) {
              if (value == '') {
                return 'Enter Last Name';
              }
              return null;
            },
          ),
          const SizedBox(
            height: AppSizes.sizeInput,
          ),
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
          const SizedBox(
            height: AppSizes.sizeInput,
          ),
          CustomInput(
            hint: 'Phone Number',
            mycontroller: Phone,
            keyboardType: TextInputType.phone,
            obc: false,
            valid: (value) {
              if (value == '') {
                return 'Enter Phone Number';
              }
              return null;
            },
          ),
          const SizedBox(
            height: AppSizes.sizeInput,
          ),
          CustomInput(
            hint: 'Password',
            mycontroller: Password,
            obc: true,
            valid: (value) {
              if (value == '') {
                return 'Enter Password';
              }
              return null;
            },
          ),
          const SizedBox(
            height: AppSizes.sizeBut,
          ),
          CustomButton(
            onpress: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
            textB: 'Create Account',
          ),
          const SizedBox(
            height: AppSizes.sizeBut,
          ),
          const Text(
            'Or',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: AppSizes.sicon,
          ),
          CustomIcons(
            onpress1: () {},
            onpress2: () {},
          ),
        ]),
      ),
    );
  }
}
