import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';
import 'package:medi_dos_app/core/Widgets/CustomCardDate.dart';
import 'package:medi_dos_app/core/Widgets/CustomContainerRaport.dart';

class RaportP extends StatefulWidget {
  const RaportP({super.key});

  @override
  State<RaportP> createState() => _RaportPState();
}

class _RaportPState extends State<RaportP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 3,
        shadowColor: Colors.grey.shade300,
        title: const Text(
          'Report',
          style: TextStyle(
              fontSize: 20,
              color: AppColors.textcolor,
              fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          Wrap(
            children: [
              CustomRaportC(
                title: 'Heart',
                Stitle: '120',
                img: 'assets/raport/bpm.png',
                unit: 'bpm',
              ),
              CustomRaportC(
                title: 'Blood Group',
                Stitle: 'O+',
                img: 'assets/raport/water.png',
              ),
              CustomRaportC(
                title: 'Weight',
                Stitle: '100',
                img: 'assets/raport/bpm.png',
                unit: 'KG',
              ),
              CustomRaportC(
                title: 'length',
                Stitle: '180',
                img: 'assets/raport/bpm.png',
                unit: 'CM',
              ),
              const SizedBox(height: 20),
              Padding(
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
              CustomCardDate(
                drname: 'DR. John Doe',
                spc: 'Radiology',
                time: '10:00 a.m',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
