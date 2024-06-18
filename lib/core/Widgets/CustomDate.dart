import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';

class CustomDate extends StatelessWidget {
  final String date;
  final String mounth;
  const CustomDate({super.key, required this.date, required this.mounth});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 89,
        height: 108,
        decoration: BoxDecoration(
            color: AppColors.date, borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              date,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            Text(
              mounth,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            )
          ],
        ));
  }
}
