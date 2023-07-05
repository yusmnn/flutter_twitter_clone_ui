import 'package:flutter/material.dart';
import 'package:flutter_twitter_clone_ui/view/screens/twitter_home/twitter_home_screen.dart';
import 'package:flutter_twitter_clone_ui/view/screens/twitter_messages/twitter_messages_screen.dart';
import 'package:flutter_twitter_clone_ui/view/screens/twitter_notifications/twitter_notif_screen.dart';
import 'package:flutter_twitter_clone_ui/view/screens/twitter_trends/twitter_trends_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: TwitterHomeScreen.routeName,
      routes: {
        TwitterHomeScreen.routeName: (context) => const TwitterHomeScreen(),
        TwitterTrendsScreen.routeName: (context) => const TwitterTrendsScreen(),
        TwitterNotifScreen.routeName: (context) => const TwitterNotifScreen(),
        TwitterMessagesScreen.routeName: (context) =>
            const TwitterMessagesScreen(),
      },
    );
  }
}
