import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/color.dart';
import '../../utils/components/button/button_icon.dart';
import '../../utils/components/button/button_outline.dart';

class DetailProfile extends StatelessWidget {
  const DetailProfile({
    super.key,
    required this.bottom,
    required this.coverHeight,
    required this.top,
    required this.profileHeight,
    required this.image,
    required this.banner,
    required this.name,
    required this.username,
    required this.bio,
    required this.link,
    required this.joined,
    required this.following,
    required this.followers,
  });

  final double bottom;
  final double coverHeight;
  final double top;
  final double profileHeight;

  final String image;
  final String banner;
  final String name;
  final String username;
  final String bio;
  final String link;
  final String joined;
  final String following;
  final String followers;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: bottom),
                  child: Container(
                    width: double.infinity,
                    height: coverHeight,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          banner,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: coverHeight / 8,
                  child: ButtonIcon(
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: bgColor,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Positioned(
              top: top,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 4.0,
                        ),
                      ),
                      child: CircleAvatar(
                        radius: profileHeight / 2,
                        backgroundImage: NetworkImage(
                          image,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 40,
                      ),
                      child: ButtonOutlined(
                        text: 'Edit profile',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  username,
                  style: const TextStyle(
                    color: cGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.3,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  bio,
                  style: const TextStyle(
                    color: cBlack,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.3,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/link.svg'),
                    const SizedBox(width: 6),
                    SizedBox(
                      child: Text(
                        link,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          color: blueArchive,
                          fontSize: MediaQuery.of(context).size.width * 0.03,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(width: 14),
                    SvgPicture.asset('assets/icons/calender.svg'),
                    const SizedBox(width: 6),
                    Text(
                      "Joined $joined",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        color: cGrey,
                        fontSize: MediaQuery.of(context).size.width * 0.03,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Container(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Text(
                      following,
                      style: const TextStyle(
                        color: cBlack,
                        fontSize: 14,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(width: 6),
                    const Text(
                      'Following',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: cGrey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 14),
                    Text(
                      followers,
                      style: const TextStyle(
                        color: cBlack,
                        fontSize: 14,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(width: 6),
                    const Text(
                      'Followers',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: cGrey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
