import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';
import 'package:medi_dos_app/core/Widgets/CustomCardProfile.dart';

class CustomFBuild extends StatelessWidget {
  const CustomFBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCardProfile(
          text: "Edit profile information",
          ic: const Icon(Icons.account_box_outlined),
          onTap: () {},
        ),
        CustomCardProfile(
          text: "Notifications",
          ic: const Icon(Icons.notifications_outlined),
          onTap: () {},
          trailling: const Text(
            'ON',
            style: TextStyle(
                color: AppColors.secondry,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
        ),
        CustomCardProfile(
          text: "Language",
          ic: const Icon(Icons.language_outlined),
          onTap: () {},
          trailling: const Text(
            'ENGLISH',
            style: TextStyle(
                color: AppColors.secondry,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
