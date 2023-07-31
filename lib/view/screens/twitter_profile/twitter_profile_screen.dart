import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_twitter_clone_ui/view/widgets/detail_profile.dart';

import '../../../utils/color.dart';
import '../../../utils/components/button/floating_button.dart';
import '../../widgets/post.dart';
import '../twitter_tweet/twitter_tweet_screen.dart';

class TwitterProfileScreen extends StatelessWidget {
  const TwitterProfileScreen({super.key});
  static const String routeName = '/twitter_profile_screen';

  final double coverHeight = 138;
  final double profileHeight = 68;

  @override
  Widget build(BuildContext context) {
    final double top = coverHeight - profileHeight / 2;
    final double bottom = profileHeight / 2;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      DetailProfile(
                        bottom: bottom,
                        coverHeight: coverHeight,
                        top: top,
                        profileHeight: profileHeight,
                        image: 'https://picsum.photos/200',
                        banner: 'https://picsum.photos/200',
                        name: 'Martha Craig',
                        username: 'craig_love',
                        bio:
                            'Digital Goodies Team - Web & Mobile UI/UX development; Graphics; Illustrations',
                        link: 'github.com/craig_love',
                        joined: 'September 2018',
                        following: '1,234',
                        followers: '4,567',
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 6),
                        child: TabBar(
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
                              text: 'Tweets',
                            ),
                            Tab(
                              text: 'Tweets & replies',
                            ),
                            Tab(
                              text: 'Media',
                            ),
                            Tab(
                              text: 'Likes',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ];
            },
            body: Expanded(
              child: TabBarView(
                clipBehavior: Clip.none,
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return const Post(
                          name: 'Martha Craig',
                          image: 'https://picsum.photos/200',
                          username: 'craig_love',
                          mention:
                              '@theflaticon @iconmonstr @pixsellz @danielbruce_ @romanshamin @vect@glyphish',
                          time: '2h',
                          text: 'Hey',
                          comment: 53,
                          retweet: 164,
                          like: 264,
                        );
                      },
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return const Post(
                          name: 'Martha Craig',
                          image: 'https://picsum.photos/200',
                          username: 'craig_love',
                          mention:
                              '@theflaticon @iconmonstr @pixsellz @danielbruce_ @romanshamin @vect@glyphish',
                          time: '2h',
                          text: 'Hey',
                          comment: 53,
                          retweet: 164,
                          like: 264,
                        );
                      },
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return const Post(
                          name: 'Martha Craig',
                          image: 'https://picsum.photos/200',
                          username: 'craig_love',
                          mention:
                              '@theflaticon @iconmonstr @pixsellz @danielbruce_ @romanshamin @vect@glyphish',
                          time: '2h',
                          text: 'Hey',
                          comment: 53,
                          retweet: 164,
                          like: 264,
                        );
                      },
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return const Post(
                          name: 'Martha Craig',
                          image: 'https://picsum.photos/200',
                          username: 'craig_love',
                          mention:
                              '@theflaticon @iconmonstr @pixsellz @danielbruce_ @romanshamin @vect@glyphish',
                          time: '2h',
                          text: 'Hey',
                          comment: 53,
                          retweet: 164,
                          like: 264,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
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
