import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';
import 'package:medi_dos_app/core/Widgets/CategoryList.dart';
import 'package:medi_dos_app/core/Widgets/CustomGrid.dart';
import 'package:medi_dos_app/core/helpers/DioHelper.dart';
import 'package:medi_dos_app/features/Screen/App/Home/data/Model/ModelAllData.dart';
import 'package:medi_dos_app/features/Screen/App/Home/data/bloc/get_clinics_bloc.dart';
import 'package:medi_dos_app/features/Screen/App/Home/data/bloc/get_clinics_state.dart';

class HomeP extends StatelessWidget {
  const HomeP({super.key, });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ClinicBloc(dioHelper: DioHelper()),
      child: Scaffold(
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CategoryScreen(),
              const SizedBox(height: 20),
              const Padding(
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
              const SizedBox(height: 15),
              BlocBuilder<ClinicBloc, ClinicState>(
                builder: (context, state) {
                  if (state is ClinicLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is ClinicLoaded) {
                    return _buildClinicList(context, state.clinics); // Pass context here
                  } else if (state is ClinicError) {
                    return Center(child: Text('Error: ${state.message}'));
                  } else {
                    return const Center(child: Text('No clinics found'));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildClinicList(BuildContext context, List<Clinic> clinics) { 
    return Column(
      children: clinics.map((clinic) {
        return CustomGrid(
          //image: clinic.image, 
          Name: clinic.name,
          adress: clinic.address,
          time: clinic.time,
          number: clinic.phone,
          ontap: () {
            Navigator.pushNamed(context, '/map'); // Navigate to '/map' screen
          },
        );
      }).toList(),
    );
  }
}
