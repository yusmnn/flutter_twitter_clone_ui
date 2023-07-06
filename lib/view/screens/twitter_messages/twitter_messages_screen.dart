import 'package:flutter/material.dart';

import '../../../utils/components/bottom_navigation_bar/bottom_navbar.dart';

class TwitterMessagesScreen extends StatefulWidget {
  const TwitterMessagesScreen({super.key});
  static const String routeName = '/twitter_messages_screen';

  @override
  State<TwitterMessagesScreen> createState() => _TwitterMessagesScreenState();
}

class _TwitterMessagesScreenState extends State<TwitterMessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Twitter Messages Screen'),
      ),
      body: const Center(
        child: Text('Twitter Messages Screen'),
      ),
      bottomNavigationBar: const BottomNavBar(
        currentIndex: 3,
      ),
    );
  }
}
