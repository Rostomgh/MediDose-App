import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';

import 'package:medi_dos_app/core/Widgets/CustomGrid.dart';

class ClinicsP extends StatefulWidget {
  const ClinicsP({super.key});

  @override
  State<ClinicsP> createState() => _ClinicsPState();
}

class _ClinicsPState extends State<ClinicsP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 3,
        shadowColor: Colors.grey.shade300,
        title: const Text(
          'Clinics',
          style: TextStyle(
              fontSize: 20,
              color: AppColors.textcolor,
              fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            CustomGrid(
              image: 'assets/Clinc/Clinc.jpg',
              Name: 'Clinic Name 1',
              adress: '123 Main St',
              time: '9:00 AM - 5:00 PM',
              number: '123-456-7890',
            ),
            CustomGrid(
              image: 'assets/Clinc/Clinc.jpg',
              Name: 'Pharmacy Name 1',
              adress: '456 Elm St',
              time: '8:00 AM - 8:00 PM',
              number: '987-654-3210',
            ),
            CustomGrid(
              image: 'assets/Clinc/Clinc.jpg',
              Name: 'Veterinary Name 1',
              adress: '789 Oak St',
              time: '10:00 AM - 6:00 PM',
              number: '555-555-5555',
            ),
          ],
        ),
      ),
    );
  }
}
