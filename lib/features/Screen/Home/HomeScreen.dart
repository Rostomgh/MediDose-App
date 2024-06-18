import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';
import 'package:medi_dos_app/core/Widgets/CategoryList.dart';

import 'package:medi_dos_app/core/Widgets/CustomGrid.dart';

class HomeP extends StatefulWidget {
  const HomeP({super.key});

  @override
  State<HomeP> createState() => _HomePState();
}

class _HomePState extends State<HomeP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Services',
          style: TextStyle(
            color: AppColors.black,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CategoryScreen(),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Available now',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: AppColors.black,
                ),
              ),
            ),
            const SizedBox(height: 15),
            CustomGrid(
              image: 'assets/Clinc/Clinc.jpg',
              Name: 'Clinic Name 1',
              adress: '123 Main St',
              time: '9:00 AM - 5:00 PM',
              number: '123-456-7890',
              ontap: () {
                Navigator.pushNamed(context, '/map');
              },
            ),
             CustomGrid(
              image: 'assets/Clinc/Clinc.jpg',
              Name: 'Pharmacy Name 1',
              adress: '456 Elm St',
              time: '8:00 AM - 8:00 PM',
              number: '987-654-3210',
                ontap: () {
                Navigator.pushNamed(context, '/map');
              },
            ),
             CustomGrid(
              image: 'assets/Clinc/Clinc.jpg',
              Name: 'Veterinary Name 1',
              adress: '789 Oak St',
              time: '10:00 AM - 6:00 PM',
              number: '555-555-5555',
                ontap: () {
                Navigator.pushNamed(context, '/map');
              },
            ),
            // Add more CustomGrid widgets as needed
          ],
        ),
      ),
    );
  }
}
