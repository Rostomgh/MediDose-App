import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Widgets/CustomReserve.dart';

class ReservationP extends StatefulWidget {
  const ReservationP({super.key});

  @override
  State<ReservationP> createState() => _ReservationPState();
}

class _ReservationPState extends State<ReservationP> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Stack(children: [
      Image(
        image: AssetImage(
          'assets/raport/imgc.png',
        ),
        width: double.infinity,
        height: 390,
      ),
      Center(
          child: CustomReserve(
        address: 'Batna.Kchida',
        name: 'AL-Ihsaniyat',
        phone: '033224214',
      ))
    ]));
  }
}
