import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/color.dart';
import '../screens/twitter_trends/twitter_trends_screen.dart';

class AllNotif extends StatelessWidget {
  const AllNotif(
      {super.key,
      required this.image,
      required this.text,
      required this.userName});

  final String image;
  final String text;
  final String userName;

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
        padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'assets/icons/star.svg',
              height: 24,
              width: 24,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(image),
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
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.76,
                  child: Text.rich(
                    TextSpan(
                      text: 'In case you missed ',
                      style: const TextStyle(
                        color: cGrey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        TextSpan(
                          text: userName,
                          style: const TextStyle(
                            color: cBlack,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const TextSpan(
                          text: ' Tweet',
                          style: TextStyle(
                            color: cGrey,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: 300,
                  height: 170,
                  child: Text(
                    text,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 6,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: cGrey,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.3,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
