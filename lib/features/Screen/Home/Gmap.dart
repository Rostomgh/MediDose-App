import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';

class GmapP extends StatefulWidget {
  const GmapP({super.key});

  @override
  State<GmapP> createState() => _GmapPState();
}

class _GmapPState extends State<GmapP> {
  
  @override
  Widget build(BuildContext context) {
    double latitude = 37.43296265331129;
    double longitude = -122.08832357078792;
    
    
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        centerTitle: true,
        title: Text("Address",style: TextStyle(
            color: AppColors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),),
      ),
      body: GoogleMap(
              myLocationButtonEnabled: true,
              mapType: MapType.normal,
              initialCameraPosition: CameraPosition(
                target: LatLng(latitude, longitude),
                zoom: 5,
              ),
            ),
          );

  
  }
}