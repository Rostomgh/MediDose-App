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
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Available now',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: AppColors.black,
                ),
              ),
            ),
            const SizedBox(height: 20),
            CustomGrid(
              image: 'assets/Category/Cat1.jpg',
              Name: 'Clinic Name 1',
              adress: '123 Main St',
              time: '9:00 AM - 5:00 PM',
              number: '123-456-7890',
            ),
            CustomGrid(
              image: 'assets/Category/Cat2.jpg',
              Name: 'Pharmacy Name 1',
              adress: '456 Elm St',
              time: '8:00 AM - 8:00 PM',
              number: '987-654-3210',
            ),
            CustomGrid(
              image: 'assets/Category/Cat3.jpg',
              Name: 'Veterinary Name 1',
              adress: '789 Oak St',
              time: '10:00 AM - 6:00 PM',
              number: '555-555-5555',
            ),
            // Add more CustomGrid widgets as needed
          ],
        ),
      ),
    );
  }
}
