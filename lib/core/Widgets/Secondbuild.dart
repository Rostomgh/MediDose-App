import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';
import 'package:medi_dos_app/core/Widgets/CustomCardProfile.dart';

class CustomSBuild extends StatelessWidget {
  const CustomSBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCardProfile(
          ic: Icon(Icons.key),
          text: "Security",
          onTap: () {},
        ),
          CustomCardProfile(
          ic: Icon(Icons.dark_mode_outlined),
          text: "Theme",
          onTap: () {},
          trailling: const Text(
            'Light mode',
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
