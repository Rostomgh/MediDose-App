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
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: ResponsiveGridRow(children: [
        ResponsiveGridCol(
          xs: 12,
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: AppColors
                        .secondry), // Ensure AppColors is correctly defined
                color: AppColors.secondry,
              ),
              height: 113,
              width: 308,
              alignment: Alignment.centerRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.location_on,color: Colors.white,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          address,
                          style: const TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.phone_callback_outlined,color: Colors.white,),
                      Text(
                        phone,
                        style: const TextStyle(
                          fontSize: 17,
                          color: Colors.white,
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
