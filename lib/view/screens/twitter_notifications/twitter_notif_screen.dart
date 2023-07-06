import 'package:flutter/material.dart';

import '../../../utils/components/bottom_navigation_bar/bottom_navbar.dart';

class TwitterNotifScreen extends StatefulWidget {
  const TwitterNotifScreen({super.key});
  static const String routeName = '/twitter_notif_screen';

  @override
  State<TwitterNotifScreen> createState() => _TwitterNotifScreenState();
}

class _TwitterNotifScreenState extends State<TwitterNotifScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Twitter Notif Screen'),
      ),
      body: const Center(
        child: Text('Twitter Notif Screen'),
      ),
      bottomNavigationBar: const BottomNavBar(
        currentIndex: 2,
      ),
    );
  }
}
