import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';
import 'package:medi_dos_app/core/Theme/SizeBoxApp.dart';
import 'package:medi_dos_app/core/Widgets/CustomGrid.dart';

class CustomCBottomSheet extends StatelessWidget {

  const CustomCBottomSheet({super.key,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        CustomGrid(
          image: 'assets/Clinc/Clinc.jpg',
          Name: 'Clinic Name 1',
          adress: '123 Main St',
          time: '9:00 AM - 5:00 PM',
          number: '123-456-7890',
          ontap: () {},
        ),
        SizedBox(height: 29),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: 44,
            width: 125,
            child: MaterialButton(
              onPressed: (){
                Navigator.pushNamed(context, '/reservation');
              },
              color: AppColors.secondry,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(8), // Adjust the radius as needed
              ),
              child: const Text(
                'Reservation',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(width: AppSizes.sizebsheet),
          Container(
            height: 44,
            width: 125,
            child: MaterialButton(
              onPressed: (){
                Navigator.pop(context);
              },
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(8), // Adjust the radius as needed
              ),
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: AppColors.secondry,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

        ])
      ],
    );
  }
}
