import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';
import 'package:medi_dos_app/core/Widgets/CustomButton.dart';
import 'package:medi_dos_app/core/Widgets/CustomRangedate.dart';
import 'package:medi_dos_app/core/Widgets/CustomReserve.dart';

class ReservationP extends StatefulWidget {
  const ReservationP({super.key});

  @override
  State<ReservationP> createState() => _ReservationPState();
}

class _ReservationPState extends State<ReservationP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
        ),
        body: SizedBox(
          height: double.infinity,
          child: Stack(children: [
            const Image(
              image: AssetImage(
                'assets/raport/imgc.png',
              ),
              width: double.infinity,
              height: 390,
            ),
            const Positioned(
              top: 300,
              left: 43,
              right: 42,
              child: CustomReserve(
                address: 'Batna.Kchida',
                name: 'AL-Ihsaniyat',
                phone: '033224214',
              ),
            ),
            const Positioned(
                top: 450,
                left: 43,
                right: 42,
                child: Text(
                  'Available Time',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black),
                )),
            const Positioned(
                top: 480, left: 43, right: 42, child: CustomDatePicker()),
            Positioned(
              top: 600,
              left: 43,
              right: 42,
              child: CustomButton(
                onpress: () {},
                textB: 'Confirm',
              ),
            )
          ]),
        ));
  }
}
