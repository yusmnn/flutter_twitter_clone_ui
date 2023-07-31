import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_twitter_clone_ui/utils/color.dart';

import '../../../utils/components/bottom_navigation_bar/bottom_navbar.dart';
import '../../../utils/components/button/floating_button.dart';
import '../../widgets/all_notif.dart';
import '../../widgets/post.dart';
import '../twitter_profile/twitter_profile_screen.dart';
import '../twitter_tweet/twitter_tweet_screen.dart';

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
          'Notifications',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
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
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: cGrey, width: 0.3),
                ),
              ),
              child: const TabBar(
                labelColor: cBlack,
                unselectedLabelColor: cGrey,
                indicatorColor: cBlack,
                indicatorWeight: 12,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: blueArchive,
                      width: 3,
                    ),
                  ),
                ),
                tabs: [
                  Tab(
                    text: 'All',
                  ),
                  Tab(
                    text: 'Mentions',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const AllNotif(
                        image: 'https://picsum.photos/200',
                        userName: 'Martha Craig',
                        text:
                            '🔥 Are you using WordPress and migrating to the JAMstack? I wrote up a case study about how Smashing Magazine moved to JAMstack and saw great performance improvements and better security.\n\nsmashingdrusteer.com/2020/01/',
                      );
                    },
                  ),
                  ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const Post(
                        name: 'Martha Craig',
                        image: 'https://picsum.photos/200',
                        username: 'craig_love',
                        mention:
                            '@theflaticon @iconmonstr @pixsellz @danielbruce_ @romanshamin @_vect_@glyphish',
                        time: '2h',
                        text: 'Hey',
                        comment: 53,
                        retweet: 164,
                        like: 264,
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(
        currentIndex: 2,
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
