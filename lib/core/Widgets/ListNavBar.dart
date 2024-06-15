import 'package:flutter/material.dart';

List<BottomNavigationBarItem> itemNavBar() {
  return [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Search',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.add),
      label: 'Add',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.account_circle),
      label: 'Profile',
    ),
  ];
}
