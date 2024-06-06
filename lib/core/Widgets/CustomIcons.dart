import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class CustomIcons extends StatelessWidget {
  final void Function()? onpress1;
  final void Function()? onpress2;
  const CustomIcons({super.key, this.onpress1, this.onpress2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(onPressed: onpress1, icon: const Icon(EvaIcons.google)),
        const SizedBox(width: 50),
        IconButton(onPressed: onpress2, icon: const Icon(EvaIcons.facebook))
      ],
    );
  }
}
