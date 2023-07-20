import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/color.dart';
import '../../../utils/components/bottom_navigation_bar/bottom_navbar.dart';
import '../../../utils/components/button/floating_button.dart';
import '../../../utils/components/search/search_text_box.dart';
import '../../widgets/empty_search.dart';
import '../twitter_profile/twitter_profile_screen.dart';
import '../twitter_tweet/twitter_tweet_screen.dart';

class TwitterTrendsScreen extends StatefulWidget {
  const TwitterTrendsScreen({super.key});
  static const String routeName = '/twitter_trends_screen';

  @override
  State<TwitterTrendsScreen> createState() => _TwitterTrendsScreenState();
}

class _TwitterTrendsScreenState extends State<TwitterTrendsScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
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
        title: SearchTextBox(
          keyboardType: TextInputType.text,
          textEditingController: _searchController,
          hintText: 'Search Twitter',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings_outlined,
              color: blueArchive,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: cGrey, width: 0.3),
              ),
            ),
            alignment: Alignment.centerLeft,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Trends for you',
                style: TextStyle(
                  color: cBlack,
                  fontSize: 19,
                  fontWeight: FontWeight.w900,
                  letterSpacing: -0.3,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: EmptySearch(),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(
        currentIndex: 1,
      ),
      resizeToAvoidBottomInset: false,
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
