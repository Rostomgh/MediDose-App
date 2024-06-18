import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart'; // Ensure this import is correct

class CustomReserve extends StatelessWidget {
  final String phone;
  final String name;
  final String address;
  const CustomReserve(
      {super.key,
      required this.name,
      required this.address,
      required this.phone});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 113,
      width: 308,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(17)),
        color: AppColors.secondry,
      
      ),
      child: ResponsiveGridRow(children: [
        ResponsiveGridCol(
          xs: 12,
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: AppColors
                        .secondry), // Ensure AppColors is correctly defined
                color: Colors.white,
              ),
              height: 148,
              width: 350,
              alignment: Alignment.centerRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.location_on),
                      Text(
                        address,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.phone_callback_outlined),
                      Text(
                        phone,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ]),
    );
  }
}
