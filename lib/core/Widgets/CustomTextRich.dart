import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';

class CustomTextRich extends StatelessWidget {
  final void Function()? onTapP;
  final void Function()? onTapC;
  const CustomTextRich({super.key, this.onTapP, this.onTapC});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: onTapC,
          child:const Text( 'Create an account ',
              style: TextStyle(fontSize: 14),
        )),
        SizedBox(width: 5,),
          InkWell(
          onTap: onTapP,
          child:const Text(  "Forget Password",
              style: TextStyle(
                color: AppColors.secondry,
                fontWeight: FontWeight.w600,
                fontSize: 14,
               )),
        ),
      ],
    );
  }
}