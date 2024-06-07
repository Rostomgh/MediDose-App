import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Theme/SizeBoxApp.dart';
import 'package:medi_dos_app/core/Widgets/CustomButton.dart';
import 'package:medi_dos_app/core/Widgets/CustomInput.dart';

// Added import for AppColor.dart
// Corrected import

class ForgotPasswordP extends StatefulWidget {
  const ForgotPasswordP({super.key}); // Corrected constructor syntax

  @override
  State<ForgotPasswordP> createState() => _ForgotPasswordPState();
}

class _ForgotPasswordPState extends State<ForgotPasswordP> {
  final TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text(
        'Forget Password',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.black, // Change this to the appropriate color
        ),
      ),
      centerTitle: true,
    ),// Corrected Appar usage
      body: Column(
        children: [
          CustomInput(
            valid: (value) {
              if (value == '') {
                return 'Enter your phone number';
              }
              return null;
            },
            mycontroller: phone,
            hint: 'Phone number',
            obc: false,
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(
            height: AppSizes.sizeBut,
          ),
          CustomButton(
            onpress: () {
              Navigator.pushNamed(context, 'Conformation');
            },
            textB: 'Next',
          ),
        ],
      ),
    );
  }
}
