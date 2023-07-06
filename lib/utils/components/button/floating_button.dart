import 'package:flutter/material.dart';
import 'package:flutter_twitter_clone_ui/utils/color.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key, required this.onTap, required this.widget});

  final void Function() onTap;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: blueArchive,
      foregroundColor: cWhite,
      onPressed: onTap,
      label: widget,
      shape: const CircleBorder(),
    );
  }
}
