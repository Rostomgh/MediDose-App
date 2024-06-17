import 'package:flutter/material.dart';
import 'package:medi_dos_app/core/Widgets/CategoryItem.dart';
import 'package:medi_dos_app/core/Widgets/CustomCategory.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categoryItems = CategoryItem.getItems(context);

    return Container(
      height: 125, // Adjust the height as needed
      child: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: categoryItems.length,
        itemBuilder: (context, index) {
          final item = categoryItems[index];
          return CustomCategory(
            title: item.title,
            imageN: item.image,
            navigate: item.navigate,
          );
        },
      ),
    );
  }
}
