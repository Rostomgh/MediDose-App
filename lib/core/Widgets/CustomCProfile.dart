import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';
import 'package:medi_dos_app/core/Theme/SizeBoxApp.dart';

class CustomCProfile extends StatelessWidget {
  final String name;
  final String email;
  final String num;
  const CustomCProfile({super.key, required this.name, required this.email, required this.num});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.sizewcont,
      height: AppSizes.sizeheightcout,
      decoration: const BoxDecoration(
        color: AppColors.secondry,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
      ),
      child: Column(
        children: [
          const SizedBox(height: 25),
          ClipOval(child: Image.asset('assets/avatar/avatar.jpg',width:120,height: 120,fit: BoxFit.cover,),),
          const SizedBox(height: AppSizes.sizeprof),
          Text(
            name,
            style: const TextStyle(
                color: AppColors.textcolor,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: AppSizes.sizeprof),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: email,
                  style: const TextStyle(
                    color: AppColors.textcolor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                const TextSpan(
                  text: ' | ',
                  style: TextStyle(
                    color: AppColors.textcolor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                TextSpan(
                  text: num,
                  style: const TextStyle(
                    color: AppColors.textcolor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
