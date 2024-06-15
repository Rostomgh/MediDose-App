import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';
import 'package:medi_dos_app/core/Theme/SizeBoxApp.dart';

class CustomRaportC extends StatelessWidget {
  final String title;
  final int heart;

  const CustomRaportC({
    super.key,
    required this.title,
    required this.heart,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 116,
      width: 140,
      decoration: BoxDecoration(
        color: AppColors.secondry,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
              height: 8), // Adding some space between title and heart icon
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                heart.toString(), // Convert int to String here
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(width: AppSizes.sizepic,),
              
            ],
          ),
        ],
      ),
    );
  }
}
