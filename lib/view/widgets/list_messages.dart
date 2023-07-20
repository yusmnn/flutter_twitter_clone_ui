import 'package:flutter/material.dart';

import '../../utils/color.dart';

class ListMessages extends StatelessWidget {
  const ListMessages({
    super.key,
    required this.image,
    required this.messages,
    required this.userName,
    required this.name,
    required this.date,
    required this.onTap,
  });

  final String image;
  final String messages;
  final String userName;
  final String name;
  final String date;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      separatorBuilder: (BuildContext context, int index) => const Divider(
        thickness: 0.1,
        color: Colors.grey,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: onTap,
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                image,
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        color: cBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '@$userName',
                      style: const TextStyle(
                        color: cGrey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.3,
                      ),
                    ),
                  ],
                ),
                Text(
                  date,
                  style: const TextStyle(
                    color: cGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.3,
                  ),
                ),
              ],
            ),
            subtitle: Text(
              messages,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: const TextStyle(
                color: cGrey,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                letterSpacing: -0.3,
              ),
            ),
          ),
        );
      },
    );
  }
}
