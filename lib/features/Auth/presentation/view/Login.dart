import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';
import 'package:medi_dos_app/core/Theme/SizeBoxApp.dart';
import 'package:medi_dos_app/core/Widgets/CustomButton.dart';
import 'package:medi_dos_app/core/Widgets/CustomInput.dart';
import 'package:medi_dos_app/core/Widgets/CustomTextRich.dart';

class LoginP extends StatefulWidget {
  const LoginP({super.key});

  @override
  State<LoginP> createState() => _LoginPState();
}

class _LoginPState extends State<LoginP> {
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
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(children: [
          CustomInput(
              obc: false,
              hint: 'Email',
              mycontroller: email,
              valid: (value) {
                if (value == '') {
                  return 'Enter Email';
                }
                return null;
              }),
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
              Navigator.pushReplacementNamed(context, '/nav');
            },
            textB: 'Login',
          ),
          const SizedBox(height: AppSizes.stext),
           CustomTextRich(
            onTapC: () {
              Navigator.pushNamed(context, '/Create');
            },
            onTapP: (){
              Navigator.pushNamed(context, 'ForgotPassword');
            },
          )
        ]),
      ),
    );
  }
}
