import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Widgets/CustomInput.dart';

class BuildReservation extends StatelessWidget {
  BuildReservation({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomInput(
          valid: (value) => value!.isEmpty ? 'Please enter a name' : null,
          mycontroller: nameController,
          hint: 'Name',
          obc: false,
          keyboardType: TextInputType.name,
        ),
        CustomInput(
          valid: (value) => value!.isEmpty ? 'Please enter a phone number' : null,
          mycontroller: phoneController,
          hint: 'Phone',
          obc: false,
          keyboardType: TextInputType.phone,
        ),
        CustomInput(
          
          valid: (value) => value!.isEmpty ? 'Please enter a time' : null,
          mycontroller: timeController,
          hint: 'Time',
          obc: false,
          keyboardType: TextInputType.datetime,
        ),
        CustomInput(
          valid: (value) => value!.isEmpty ? 'Please enter a number' : null,
          mycontroller: numberController,
          hint: 'Number',
          obc: false,
          keyboardType: TextInputType.number,
        ),
      ],
    );
  }
}