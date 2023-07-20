import 'package:flutter/material.dart';
import 'package:flutter_twitter_clone_ui/utils/color.dart';

import '../../utils/components/button/button_radius.dart';

class EmptySearch extends StatelessWidget {
  const EmptySearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(34.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'No new trends for you ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: cBlack,
              fontSize: 22,
              fontWeight: FontWeight.w900,
              letterSpacing: 0.15,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          const Text(
            "It seems like there's not a lot to show you right now, but you can see trends for other areas",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: cGrey,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.3,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          ButtonRadius(
            text: 'Change location',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
