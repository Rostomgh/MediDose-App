import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';
import 'package:medi_dos_app/core/Widgets/CategoryList.dart';
import 'package:medi_dos_app/core/Widgets/CustomGrid.dart';
import 'package:medi_dos_app/features/Screen/App/Home/data/Model/ModelAllData.dart';


class HomeP extends StatelessWidget {
  const HomeP({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Services',
          style: TextStyle(
            color: AppColors.black,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryScreen(),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Available now',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: AppColors.black,
                ),
              ),
            ),
            SizedBox(height: 15),
            
          ],
        ),
      ),
    );
  }

  Widget _buildClinicList(BuildContext context, List<ClinicModel> clinics) {
    return Column(
      children: clinics.map((ClinicModel) {
        return CustomGrid(
          //image: clinic.image,
          Name: ClinicModel.name,
          adress: ClinicModel.address,
          time: ClinicModel.time,
          number: ClinicModel.phone,
          ontap: () {
            Navigator.pushNamed(context, '/map'); // Navigate to '/map' screen
          },
        );
      }).toList(),
    );
  }
}
