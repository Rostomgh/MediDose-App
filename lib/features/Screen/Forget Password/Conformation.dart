import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Theme/SizeBoxApp.dart';
import 'package:medi_dos_app/core/Widgets/CustomButton.dart';
import 'package:medi_dos_app/core/Widgets/CustomInput.dart';

class ConformationPasswordP extends StatefulWidget {
  const ConformationPasswordP({super.key});

  @override
  State<ConformationPasswordP> createState() => _ConformationPasswordPState();
}

class _ConformationPasswordPState extends State<ConformationPasswordP> {
  final TextEditingController code = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text(
        'Confirmation',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.black, // Change this to the appropriate color
        ),
      ),
      centerTitle: true,
    ),
    body: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
          children: [
            CustomInput(
              valid: (value) {
                if (value == '') {
                  return 'Enter code of confimation';
                }
                return null;
              },
              mycontroller: code,
              hint: 'code of confimation',
              obc: false,
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(
              height: AppSizes.sizeBut,
            ),
            CustomButton(
              onpress: () {
                Navigator.pushNamed(context, 'newPassword');
              },
              textB: 'Next',
            ),
          ],
        ),
    ),
    );
  }
}