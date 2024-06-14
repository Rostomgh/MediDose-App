import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Widgets/Categorymodel.dart';

class CategoryItem {
  List<CategoryModel> items = [
    CategoryModel(image: "assets/Category/Cat1.jpg", title: "Clinics",navigate:(){}),
    CategoryModel(image: "assets/Category/Cat2.jpg", title: "Pharmacy",navigate:(){}),
    CategoryModel(image: "assets/Category/Cat3.jpg", title: "veterinary",navigate:(){}),
  ];
}
