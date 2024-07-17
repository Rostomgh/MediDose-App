import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Widgets/Categorymodel.dart';

class CategoryItem {
  static List<CategoryModel> getItems(BuildContext context) {
    return [
      CategoryModel(
        image: "assets/Category/Cat1.jpg",
        title: "Clinics",
        navigate: () {
          Navigator.pushNamed(context, '/clinic');
        },
      ),
      CategoryModel(
        image: "assets/Category/Cat2.jpg",
        title: "Pharmacy",
        navigate: () {
          Navigator.pushNamed(context, "/pharm");
        },
      ),
      CategoryModel(
        image: "assets/Category/Cat3.jpg",
        title: "Veterinary",
        navigate: () {
          Navigator.pushNamed(context, 'veterinary');
        },
      ),
    ];
  }
}
