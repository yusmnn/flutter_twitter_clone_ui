import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_twitter_clone_ui/utils/components/button/floating_button.dart';

import '../../../utils/components/bottom_navigation_bar/bottom_navbar.dart';
import '../../widgets/card_post.dart';
import '../twitter_profile/twitter_profile_screen.dart';
import '../twitter_tweet/twitter_tweet_screen.dart';

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
        leading: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, TwitterProfileScreen.routeName);
          },
          child: Image.asset(
            'assets/images/account.png',
            height: 32,
            width: 32,
          ),
        ),
        title: SvgPicture.asset(
          'assets/icons/twitter_logo.svg',
          height: 22,
          width: 27,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/stroke_icon.svg',
              height: 22,
              width: 27,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => const CardPost(
          name: 'Martha Craig',
          username: 'craig_love',
          time: '2h',
          text:
              'Kobe’s passing is really sticking w/ me in a way I didn’t expect.\n\nHe was an icon, the kind of person who wouldn’t die this way. My wife compared it to Princess Di’s accident.\n\nBut the end can happen for anyone at any time, & I can’t help but think of anything else lately.',
          image: 'https://picsum.photos/200',
          comment: 53,
          retweet: 164,
          like: 264,
        ),
      ),
      bottomNavigationBar: const BottomNavBar(
        currentIndex: 0,
      ),
      floatingActionButton: FloatingButton(
        onTap: () {
          Navigator.pushNamed(context, TwitterTweetScreen.routeName);
        },
        widget: SvgPicture.asset(
          'assets/icons/add_text_icon.svg',
        ),
      ),
    );
  }
}
