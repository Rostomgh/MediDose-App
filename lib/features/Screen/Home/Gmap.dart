import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medi_dos_app/core/Animation/BottomSheetAnimation.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';
import 'package:medi_dos_app/core/Widgets/CustomCButtomSheet.dart';

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
        title: const Text("Address",style: TextStyle(
            color: AppColors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),),
      ),
      body: const Column(
        children: [
          /*GoogleMap(
                  myLocationButtonEnabled: true,
                  mapType: MapType.normal,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(latitude,longitude),
                    zoom: 5,
                  ),
                ),*/
              Expanded(child: MyDraggableSheet(child:CustomCBottomSheet() ))
        ],
      ),
          );

  
  }
}