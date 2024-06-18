import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';
import 'package:medi_dos_app/core/Theme/SizeBoxApp.dart';

class CustomRaportC extends StatelessWidget {
  final String title;
  final String Stitle;
  final String img;
  final String? unit;

  const CustomRaportC({
    Key? key,
    required this.title,
    required this.Stitle,
    required this.img,
    this.unit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Container(
        height: 126,
        width: 150,
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
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8), // Adding some space between title and heart icon
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Stitle, // Convert int to String here
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: AppSizes.sizepic),
                Image.asset(
                  img,
                  width: 58,
                  height: 50,
                  fit: BoxFit.contain,
                  
                ),
              ],
            ),
            const SizedBox(height: AppSizes.stext),
            if (unit != null)
              Text(
                unit!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
