import 'package:flutter/material.dart';
import 'package:flutter_twitter_clone_ui/view/screens/twitter_setting/twitter_setting_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utils/color.dart';
import 'view/screens/twitter_home/twitter_home_screen.dart';
import 'view/screens/twitter_messages/twitter_messages_screen.dart';
import 'view/screens/twitter_notifications/twitter_notif_screen.dart';
import 'view/screens/twitter_trends/twitter_trends_screen.dart';
import 'view/screens/twitter_tweet/twitter_tweet_screen.dart';
import 'view/screens/twitter_profile/twitter_profile_screen.dart';

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
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)
            .copyWith(background: bgColor),
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      initialRoute: TwitterHomeScreen.routeName,
      routes: {
        TwitterHomeScreen.routeName: (context) => const TwitterHomeScreen(),
        TwitterTrendsScreen.routeName: (context) => const TwitterTrendsScreen(),
        TwitterNotifScreen.routeName: (context) => const TwitterNotifScreen(),
        TwitterMessagesScreen.routeName: (context) =>
            const TwitterMessagesScreen(),
        TwitterTweetScreen.routeName: (context) => const TwitterTweetScreen(),
        TwitterProfileScreen.routeName: (context) =>
            const TwitterProfileScreen(),
        TwitterSettingScreen.routeName: (context) =>
            const TwitterSettingScreen(),
      },
    );
  }
}
