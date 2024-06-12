import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';
import 'package:medi_dos_app/core/Theme/SizeBoxApp.dart';

import 'package:responsive_grid/responsive_grid.dart';

class CustomGrid extends StatefulWidget {
  final String image;
  final String Name;
  final String adress;
  final String time;
  final String number;

  const CustomGrid({
    super.key,
    required this.image,
    required this.Name,
    required this.adress,
    required this.time,
    required this.number,
  });

  @override
  State<CustomGrid> createState() => _CustomGridState();
}

class _CustomGridState extends State<CustomGrid> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
             xs: 12,
              //md: 10,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: AppColors.secondry),
                  color: Colors.white,
              ),
              height: 148,
              width: 350,
              alignment: Alignment.centerRight,
            
              child: Row(
                children: [
                  Image.asset(widget.image, height: 128, width: 118),
                  const SizedBox(width: AppSizes.sizeRow),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.Name,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: AppColors.black,
                        ),
                      ),
                      const SizedBox(height: AppSizes.sizeColumn),
                      const Text(
                        'Clinic',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: AppColors.black,
                        ),
                      ),
                      const SizedBox(height: AppSizes.sizeColumn),
                      Text(
                        widget.adress,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: AppColors.black,
                        ),
                      ),
                      const SizedBox(height: AppSizes.sizeColumn),
                      Text(
                        widget.time,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: AppColors.black,
                        ),
                      ),
                      const SizedBox(height: AppSizes.sizeColumn),
                      Text(
                        widget.number,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: AppColors.black,
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
