import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:medi_dos_app/Buissness%20Logic/Nav_Bar_Bloc/nav_bar_bloc.dart';
import 'package:medi_dos_app/features/Screen/Home/HomeScreen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CustomNavBar extends StatefulWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int selectedIndex = 0; // Initial index for selected screen

  final List<Widget> screens = [
    HomeP(),
    const Text('chardon'),
    const Text(
      'miss',
      style: TextStyle(color: Colors.amber),
    ),
    const Text('chardon'),
    // Add more screens as needed
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBarBloc, NavBarState>(
      builder: (context, state) {
        if (state is NavBarInitial) {
          selectedIndex = state.tabindex; // Update selectedIndex based on state
        }

        return Scaffold(
          body: IndexedStack(
            index: selectedIndex,
            children: screens,
          ),
          bottomNavigationBar: CurvedNavigationBar(
            height: 50,
            index: selectedIndex,
            onTap: (index) {
              BlocProvider.of<NavBarBloc>(context).add(Changeindex(tabindex: index));
            },
            backgroundColor: Colors.blue,
            buttonBackgroundColor: Colors.white,
            color: Colors.blue,
            animationDuration: const Duration(milliseconds: 300),
            items: const [
              // Replace with your actual navigation items
              Icon(Icons.home, size: 30),
              Icon(Icons.search, size: 30),
              // Add more items as needed
            ],
          ),
        );
      },
    );
  }
}
