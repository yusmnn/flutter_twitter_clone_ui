import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/color.dart';
import '../../../utils/components/button/text_button.dart';

class TwitterSettingScreen extends StatefulWidget {
  const TwitterSettingScreen({super.key});

  static const String routeName = '/twitter_setting_screen';
  @override
  State<TwitterSettingScreen> createState() => _TwitterSettingScreenState();
}

class _TwitterSettingScreenState extends State<TwitterSettingScreen> {
  final List<String> settingAccount = [
    'Account',
    'Privacy and safety',
    'Notifications',
    'Content preferences'
  ];

  final List<String> settingGeneral = [
    'Display and sound',
    'Data usage',
    'Accessibility',
    'About Twitter',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Settings and privacy',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          ButtonText(
            onPressed: () {
              Navigator.pop(context);
            },
            text: 'Done',
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 6, left: 20),
            child: Container(
              alignment: Alignment.topLeft,
              child: const Text(
                '@SaurabhThakur',
                style: TextStyle(
                  color: cGrey,
                  fontSize: 19,
                  fontWeight: FontWeight.w900,
                  letterSpacing: -0.5,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            // height: 414,
            color: bgColor,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: settingAccount.length,
                separatorBuilder: (context, index) {
                  return const Divider(
                    thickness: 0.3,
                    color: cGrey,
                  );
                },
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      settingAccount[index],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        letterSpacing: -0.3,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/icons/right_arrow.svg',
                        height: 13,
                        width: 7,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 6, left: 20),
            child: Container(
              alignment: Alignment.topLeft,
              child: const Text(
                'General',
                style: TextStyle(
                  color: cGrey,
                  fontSize: 19,
                  fontWeight: FontWeight.w900,
                  letterSpacing: -0.5,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            // height: 414,
            color: bgColor,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: settingGeneral.length,
                    separatorBuilder: (context, index) {
                      return const Divider(
                        thickness: 0.3,
                        color: cGrey,
                      );
                    },
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          settingGeneral[index],
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            letterSpacing: -0.3,
                          ),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'assets/icons/right_arrow.svg',
                            height: 13,
                            width: 7,
                          ),
                        ),
                      );
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Text(
                      'General settings affect all of your Twitter accounts on this device.',
                      style: TextStyle(
                        color: cGrey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
