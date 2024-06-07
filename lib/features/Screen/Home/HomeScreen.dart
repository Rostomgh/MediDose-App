import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';
import 'package:medi_dos_app/core/Widgets/CustomContainerCategory.dart';

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
            color: AppColors.black, fontSize: 20, fontWeight: FontWeight.w500),
      ),
    ),
    body: CustomCategory(title: 'Clinic',imageN: "assets/Category/Cat1.jpg",)
    
    
    
    );
  }
}
