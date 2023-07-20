import 'package:flutter/material.dart';

import '../../color.dart';

class ButtonRadius extends StatelessWidget {
  const ButtonRadius({super.key, required this.text, required this.onPressed});
  final String text;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: blueArchive,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: cWhite,
          fontSize: 14,
          fontWeight: FontWeight.w900,
          letterSpacing: -0.1,
        ),
      ),
    );
  }
}
