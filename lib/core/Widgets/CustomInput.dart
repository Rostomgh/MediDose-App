import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';

class CustomInput extends StatelessWidget {
  final String? Function(String?) valid;
  final TextEditingController mycontroller;
  final String hint;
  final bool obc;
  final TextInputType? keyboardType;

  const CustomInput({
    Key? key,
    required this.valid,
    required this.mycontroller,
    required this.hint, required this.obc, this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        width: 329,
        decoration: BoxDecoration(
          border: Border.all(width: 0.7),
            borderRadius: BorderRadius.circular(10.57),
        ),
        child: TextFormField(
          keyboardType:keyboardType ,
          obscureText: obc,
          validator: valid,
          controller: mycontroller,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            border: OutlineInputBorder(
            
              borderRadius: BorderRadius.circular(10.57),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            hintText: hint,
            hintStyle: TextStyle(color: AppColors.textcolor,fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
