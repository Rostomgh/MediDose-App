import 'package:flutter/material.dart';

class CustomCardProfile extends StatelessWidget {
  final String text;
  final Icon ic;
  final Widget? trailling;
  final VoidCallback? onTap;

  const CustomCardProfile({
    super.key,
    required this.text,
    required this.ic,
    this.trailling,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onTap,
        title: Text(
          text,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        leading: ic,
        trailing: trailling,
      ),
    );
  }
}
