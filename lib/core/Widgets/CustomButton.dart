import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';

class CustomButton extends StatelessWidget {
  final void Function() onpress;
  final String textB;

  const CustomButton({
    super.key,
    required this.onpress,
    required this.textB,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 269,
      height: 44,
    //
      child: MaterialButton(
        color:AppColors.secondry, 
        onPressed: onpress, 
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
        ),
        child: Text(
          textB,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
