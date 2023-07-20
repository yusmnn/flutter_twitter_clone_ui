import 'package:flutter/material.dart';

import '../../color.dart';

class ButtonText extends StatelessWidget {
  const ButtonText({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          color: blueArchive,
          fontSize: 17,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.3,
        ),
      ),
    );
  }
}
