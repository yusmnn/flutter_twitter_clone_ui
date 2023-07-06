import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_twitter_clone_ui/utils/components/button/floating_button.dart';

import '../../../utils/components/bottom_navigation_bar/bottom_navbar.dart';

class TwitterHomeScreen extends StatefulWidget {
  const TwitterHomeScreen({super.key});
  static const String routeName = '/twitter_home_screen';

  @override
  State<TwitterHomeScreen> createState() => _TwitterHomeScreenState();
}

class _TwitterHomeScreenState extends State<TwitterHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Twitter Home Screen'),
      ),
      body: const Center(
        child: Text('Twitter Home Screen'),
      ),
      bottomNavigationBar: const BottomNavBar(
        currentIndex: 0,
      ),
      floatingActionButton: FloatingButton(
        onTap: () {},
        widget: SvgPicture.asset(
          'assets/icons/add_text_icon.svg',
        ),
      ),
    );
  }
}
