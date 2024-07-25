import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Widgets/CustomCardProfile.dart';

class CustomThBuild extends StatelessWidget {
  const CustomThBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCardProfile(
          ic: const Icon(Icons.account_box_outlined),
          text: "Help & Support",
          onTap: () {},
        ),
          CustomCardProfile(
          ic: const Icon(Icons.contact_page_outlined),
          text: "Contact us",
          onTap: () {},
        ),
          CustomCardProfile(
          ic: const Icon(Icons.policy_outlined),
          text: "Privacy policy",
          onTap: () {},
        ),
        CustomCardProfile(
          ic: const Icon(Icons.exit_to_app_outlined),
          text: "Logout",
          onTap: () {},
        ),
      ],




    );
  }
}