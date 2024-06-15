import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';

List<BottomNavigationBarItem> itemNavBar() {
  return [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.report_off),
      label: 'Report',
    ),
    /*BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/logo/Logo.jpg',
        width: 30,
        height: 30,
        color: AppColors.secondry, // Make sure AppColors.secondry is defined and appropriate
      ),
      label: 'Logo', // Provide a label for consistency
    ),*/
    const BottomNavigationBarItem(
      icon: Icon(Icons.bloodtype_outlined),
      label: 'Blood',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.account_circle_outlined),
      label: 'Profile',
    ),
  ];
}
