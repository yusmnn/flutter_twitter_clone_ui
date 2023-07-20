import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_twitter_clone_ui/utils/color.dart';

import '../screens/twitter_trends/twitter_trends_screen.dart';

class CardPost extends StatelessWidget {
  const CardPost(
      {super.key,
      required this.name,
      required this.username,
      required this.text,
      required this.image,
      required this.time,
      required this.comment,
      required this.retweet,
      required this.like});

  final String name;
  final String username;
  final String text;
  final String image;
  final String time;
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
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(image),
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
                  Text(
                    text,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: cBlack,
                      fontSize: 16,
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
