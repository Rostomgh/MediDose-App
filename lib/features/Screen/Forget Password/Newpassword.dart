import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Theme/SizeBoxApp.dart';
import 'package:medi_dos_app/core/Widgets/CustomButton.dart';
import 'package:medi_dos_app/core/Widgets/CustomInput.dart';

class NewPasswordP extends StatefulWidget {
  const NewPasswordP({super.key}); // Added the key parameter

  @override
  State<NewPasswordP> createState() => _NewPasswordPState();
}

class _NewPasswordPState extends State<NewPasswordP> {
  final TextEditingController NPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'New Password',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black, // Change this to the appropriate color
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [   
          CustomInput(
            hint: 'New Password',
            mycontroller: NPassword,
            obc: false,
            valid: (value) {
              if (value == '') {
                return 'Enter your Password';
              }
              return null;
            },
          ),
          const SizedBox(height: AppSizes.sizeInput,),
            CustomInput(
            hint: 'Confirm Password',
            mycontroller: NPassword,
            obc: false,
            valid: (value) {
              if (value == '') {
                return 'Enter your Password';
              }
              return null;
            },
          ),
          const SizedBox(height:  AppSizes.sizeBut,),
          CustomButton(onpress: (){
            Navigator.pushNamed(context, '/login');
          }, textB: 'Next',),
        ],
      ),
    );
  }
}
