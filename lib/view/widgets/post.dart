import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_twitter_clone_ui/utils/color.dart';

import '../screens/twitter_trends/twitter_trends_screen.dart';

class Post extends StatelessWidget {
  const Post(
      {super.key,
      required this.name,
      required this.username,
      required this.text,
      required this.image,
      required this.time,
      required this.comment,
      required this.retweet,
      required this.like,
      required this.mention});

  final String name;
  final String username;
  final String text;
  final String image;
  final String time;
  final String mention;
  final int comment;
  final int retweet;
  final int like;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey,
            width: 0.2,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(
                'assets/images/account.png',
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.72,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                              color: cBlack,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Text(
                              '@$username',
                              style: const TextStyle(
                                color: cGrey,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 4.0),
                            child: Icon(Icons.circle, size: 4, color: cGrey),
                          ),
                          Text(
                            time,
                            style: const TextStyle(
                              color: cGrey,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, TwitterTrendsScreen.routeName);
                        },
                        child: const Icon(
                          Icons.more_vert,
                          color: cGrey,
                        ),
                      ),
                    ],
                  ),
                  Text.rich(
                    TextSpan(
                      text: text,
                      style: const TextStyle(
                        color: cGrey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        TextSpan(
                          text: mention,
                          style: const TextStyle(
                            color: blueArchive,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const TextSpan(
                          text:
                              '\nCheck our new article “Top Icons Packs and Resources for Web”. You are in!😎👉',
                          style: TextStyle(
                            color: cBlack,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Card(
                    color: Colors.white,
                    elevation: 0.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 162,
                          width: MediaQuery.of(context).size.width * 0.72,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            image: DecorationImage(
                              image: NetworkImage(image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Top Icons and Resources for for Web for Web',
                                    style: TextStyle(
                                      color: cBlack,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    '\nflatlogiclogic.com',
                                    style: TextStyle(
                                      color: cGrey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/comment.svg',
                              width: 16,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              comment.toString(),
                              style: const TextStyle(
                                color: cGrey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/retweet.svg',
                              width: 16,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              retweet.toString(),
                              style: const TextStyle(
                                color: cGrey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/like.svg',
                              width: 16,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              like.toString(),
                              style: const TextStyle(
                                color: cGrey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SvgPicture.asset(
                          'assets/icons/share.svg',
                          width: 16,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
