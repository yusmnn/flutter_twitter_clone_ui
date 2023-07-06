import 'package:flutter/material.dart';
import 'package:flutter_twitter_clone_ui/view/screens/twitter_home/twitter_home_screen.dart';
import 'package:flutter_twitter_clone_ui/view/screens/twitter_messages/twitter_messages_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../view/screens/twitter_notifications/twitter_notif_screen.dart';
import '../../../view/screens/twitter_trends/twitter_trends_screen.dart';
import '../../color.dart';

class BottomNavBar extends StatefulWidget {
  final int currentIndex;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.black,
            width: 0.5,
          ),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        currentIndex: widget.currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: const TextStyle(
          fontSize: 8,
          fontWeight: FontWeight.w500,
          color: Colors.grey,
        ),
        selectedLabelStyle: const TextStyle(
          fontSize: 8,
          color: Colors.transparent,
        ),
        selectedIconTheme: const IconThemeData(color: blueArchive),
        unselectedIconTheme: const IconThemeData(color: cGrey),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.house,
              size: 20,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.bell,
              size: 20,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.envelope,
              size: 20,
            ),
            label: '',
          ),
        ],
        onTap: (value) {
          if (value == widget.currentIndex) {
            return;
          }
          switch (value) {
            case 0:
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return const TwitterHomeScreen();
                  },
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    final tween = Tween(begin: 0.1, end: 1.0);
                    return FadeTransition(
                      opacity: animation.drive(tween),
                      child: child,
                    );
                  },
                ),
              );
              break;
            case 1:
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return const TwitterTrendsScreen();
                  },
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    final tween = Tween(begin: 0.1, end: 1.0);
                    return FadeTransition(
                      opacity: animation.drive(tween),
                      child: child,
                    );
                  },
                ),
              );

              break;
            case 2:
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return const TwitterNotifScreen();
                  },
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    final tween = Tween(begin: 0.1, end: 1.0);
                    return FadeTransition(
                      opacity: animation.drive(tween),
                      child: child,
                    );
                  },
                ),
              );

              break;
            case 3:
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return const TwitterMessagesScreen();
                  },
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    final tween = Tween(begin: 0.1, end: 1.0);
                    return FadeTransition(
                      opacity: animation.drive(tween),
                      child: child,
                    );
                  },
                ),
              );
              break;
            default:
              Navigator.pushReplacementNamed(
                  context, TwitterHomeScreen.routeName);
          }
        },
      ),
    );
  }
}
