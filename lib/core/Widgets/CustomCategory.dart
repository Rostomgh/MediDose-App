import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';


class CustomCategory extends StatelessWidget {
  final String title;
  final String imageN;
    final void Function()? navigate;

  const CustomCategory({super.key, required this.title, required this.imageN, this.navigate});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:navigate ,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.secondry),
        ),
        height: 100,
        width: 100,
        margin: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageN,
              width: 60,
              height: 60,
            ),
            const SizedBox(height: 6),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColors.black,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
