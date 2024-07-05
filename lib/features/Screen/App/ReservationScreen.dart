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
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
        ),
        body: const Column(
          children: [
            Stack(children: [
              Image(
                image: AssetImage(
                  'assets/raport/imgc.png',
                ),
                width: double.infinity,
                height: 390,
              ),        
                Positioned(
                  top: 250,
                left: 43,
                right: 42,
                
                child: CustomReserve(
                            address: 'Batna.Kchida',
                            name: 'AL-Ihsaniyat',
                            phone: '033224214',
                          ),
              )
            ]),
          ],
        ));
  }
}
