import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Widgets/CustomGrid.dart';

class veterinaryP extends StatefulWidget {
  const veterinaryP({super.key});

  @override
  State<veterinaryP> createState() => _veterinaryPState();
}

class _veterinaryPState extends State<veterinaryP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text(
          'Veterinary',
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
          ],)
    );
  }
}