import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_dos_app/Buissness%20Logic/Nav_Bar_Bloc/nav_bar_bloc.dart';
import 'package:medi_dos_app/core/Theme/AppColor.dart';
import 'package:medi_dos_app/core/Widgets/ListNavBar.dart';
import 'package:medi_dos_app/features/Screen/App/BloodScreen.dart';
import 'package:medi_dos_app/features/Screen/App/Home/HomeScreen.dart';
import 'package:medi_dos_app/features/Screen/App/ProfileScreen.dart';
import 'package:medi_dos_app/features/Screen/App/RaportScreen.dart';

List<BottomNavigationBarItem> navItems = [
  const BottomNavigationBarItem(icon: Icon(Icons.home,size: 14,), label: 'Home'),
  const BottomNavigationBarItem(icon: Icon(Icons.account_box_outlined,size: 14,), label: 'Raport',),
  const BottomNavigationBarItem(icon: Icon(Icons.account_box_outlined,size: 14,), label: 'Community'),
  const BottomNavigationBarItem(icon: Icon(Icons.account_box_outlined,size: 14,), label: 'Profile'),
];

List<Widget> bottomNavScreens = [
  const HomeP(),
  const RaportP(),
  const BloodP(),
  const ProfileP(),
];

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarBloc(), // Provide the NavBarBloc
      child: BlocBuilder<NavBarBloc, NavBarState>(
        builder: (context, state) {
          if (state is NavBarInitial) {
            return Scaffold(
              body: bottomNavScreens[state.tabindex], // Display the screen based on current index
              bottomNavigationBar: BottomNavigationBar(
                selectedLabelStyle:const  TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                showSelectedLabels: true,
                showUnselectedLabels: true,
                backgroundColor: Colors.white,
                selectedItemColor: AppColors.secondry,
                unselectedItemColor: AppColors.black,
                items: itemNavBar(),
                currentIndex: state.tabindex,
                onTap: (index) {
                  context.read<NavBarBloc>().add(Changeindex(index, tabindex: index)); // Dispatch event to change the index
                },
              ),
            );
          } else {
            // Handle initial state or other states if needed
            return Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }
        },
      ),
    );
  }
}
