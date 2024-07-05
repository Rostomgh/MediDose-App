import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';
import 'package:medi_dos_app/core/Widgets/CategoryList.dart';
import 'package:medi_dos_app/core/Widgets/CustomGrid.dart';

class BloodP extends StatefulWidget {
  const BloodP({super.key});

  @override
  State<BloodP> createState() => _BloodPState();
}

class _BloodPState extends State<BloodP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Blood Donation Centers',
          style: TextStyle(
            color: AppColors.black,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child:  CustomGrid(
              image: 'assets/Clinc/Clinc.jpg',
              Name: 'Clinic Name 1',
              adress: '123 Main St',
              time: '9:00 AM - 5:00 PM',
              number: '123-456-7890',
              ontap: () {
                Navigator.pushNamed(context, '/map');
              },


    )));
  }
}