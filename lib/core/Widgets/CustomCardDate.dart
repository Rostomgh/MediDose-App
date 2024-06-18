import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';
import 'package:medi_dos_app/core/Theme/SizeBoxApp.dart';
import 'package:medi_dos_app/core/Widgets/CustomDate.dart';

class CustomCardDate extends StatelessWidget {
  final String drname;
  final String time;
  final String spc;

  const CustomCardDate({
    Key? key,
    required this.time,
    required this.drname,
    required this.spc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            xs: 12,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: AppColors.secondry),
                color: AppColors.secondry,
              ),
              height: 153,
              width: 350,
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CustomDate(date: '15', mounth: 'Apr'),
                  ),
                  const SizedBox(width: 8.0), // Adjust the space between image and text as needed
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        time,
                        style: const TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: Colors.white, // Changed to black for visibility
                        ),
                      ),
                      const SizedBox(height: AppSizes.sizecard),
                      Text(
                        drname,
                        style: const TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: Colors.white, // Changed to black for visibility
                        ),
                      ),
                      const SizedBox(height: AppSizes.sizecard),
                      Text(
                        spc,
                        style: const TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: Colors.white, // Changed to black for visibility
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
