import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/color.dart';
import '../../../utils/components/bottom_navigation_bar/bottom_navbar.dart';
import '../../../utils/components/button/floating_button.dart';
import '../../../utils/components/search/search_text_box.dart';
import '../../widgets/list_messages.dart';
import '../twitter_profile/twitter_profile_screen.dart';
import '../twitter_setting/twitter_setting_screen.dart';
import '../twitter_tweet/twitter_tweet_screen.dart';

class TwitterMessagesScreen extends StatefulWidget {
  const TwitterMessagesScreen({super.key});
  static const String routeName = '/twitter_messages_screen';

  @override
  State<TwitterMessagesScreen> createState() => _TwitterMessagesScreenState();
}

class _TwitterMessagesScreenState extends State<TwitterMessagesScreen> {
  final TextEditingController _searchDm = TextEditingController();
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
        title: const Text(
          'Messages',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, TwitterSettingScreen.routeName);
            },
            icon: const Icon(
              Icons.settings_outlined,
              color: blueArchive,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: SearchTextBox(
                textEditingController: _searchDm,
                hintText: 'Search for people and groups',
              ),
            ),
            const Divider(
              thickness: 0.3,
              color: cGrey,
            ),
            ListMessages(
              onTap: () {},
              image: 'https://picsum.photos/200',
              messages:
                  'You: I would greatly appreciate if you could retweet this if you think its worthy :)',
              userName: 'craig_love',
              name: 'Martha Craig',
              date: '2h',
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(
        currentIndex: 3,
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
