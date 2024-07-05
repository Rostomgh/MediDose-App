import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:medi_dos_app/core/Animation/BottomSheetAnimation.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';
import 'package:medi_dos_app/core/Widgets/CustomCButtomSheet.dart';

class GmapP extends StatefulWidget {
  const GmapP({super.key});

  @override
  _GmapPState createState() => _GmapPState();
}

class _GmapPState extends State<GmapP> {
  double latitude = 37.43296265331129;
  double longitude = -122.08832357078792;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        centerTitle: true,
        title: const Text(
          "Map",
          style: TextStyle(
            color: AppColors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Stack(
        children: [
          GoogleMap(
            myLocationButtonEnabled: true,
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: LatLng(latitude, longitude),
              zoom: 5,
            ),
          ),
          const Positioned.fill(
            child: MyDraggableSheet(
              child: CustomCBottomSheet(),
            ),
          ),
        ],
      ),
    );
  }
}