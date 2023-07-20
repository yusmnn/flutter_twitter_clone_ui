import 'package:flutter/material.dart';
import 'package:flutter_twitter_clone_ui/utils/color.dart';

class ButtonIcon extends StatelessWidget {
  const ButtonIcon({super.key, required this.onPressed, required this.icon});

  final Icon icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      color: cBlack,
      splashColor: Colors.black12,
      highlightColor: Colors.black12,
      padding: const EdgeInsets.all(12),
      iconSize: 24,
      constraints: const BoxConstraints(
        minWidth: 0,
        minHeight: 0,
      ),
    );
  }
}
