import 'package:flutter/material.dart';

import '../../../utils/components/bottom_navigation_bar/bottom_navbar.dart';

class TwitterTrendsScreen extends StatefulWidget {
  const TwitterTrendsScreen({super.key});
  static const String routeName = '/twitter_trends_screen';

  @override
  State<TwitterTrendsScreen> createState() => _TwitterTrendsScreenState();
}

class _TwitterTrendsScreenState extends State<TwitterTrendsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Twitter Trends Screen'),
      ),
      body: const Center(
        child: Text('Twitter Trends Screen'),
      ),
      bottomNavigationBar: const BottomNavBar(
        currentIndex: 1,
      ),
    );
  }
}
