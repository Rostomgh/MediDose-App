import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';

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
        title: const Text('Report',style: TextStyle(
              fontSize: 20,
              color: AppColors.textcolor,
              fontWeight: FontWeight.w500),),
              centerTitle: true,
      ),

    );
  }
}