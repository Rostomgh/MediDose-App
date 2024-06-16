import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';
import 'package:medi_dos_app/core/Widgets/CustomCProfile.dart';

class ProfileP extends StatefulWidget {
  const ProfileP({super.key});

  @override
  State<ProfileP> createState() => _ProfilePState();
}

class _ProfilePState extends State<ProfileP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 3,
      shadowColor: Colors.grey.shade300,
      title: const Text(
        'Profile',
        style: TextStyle(
            fontSize: 20,
            color: AppColors.textcolor,
            fontWeight: FontWeight.w500),
      ),
      centerTitle: true,
    ),
    body: const Column(
      children: [
        CustomCProfile(email:"youremail@domain.com" ,name:"Puerto Rico" ,num:"+01 234 567 89" ,)
      ],
    ),
    
    
    
    
    );
  }
}
