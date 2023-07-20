import 'package:flutter/material.dart';

import '../../../utils/components/button/button_radius.dart';
import '../../../utils/components/button/text_button.dart';
import '../../widgets/write_tweet.dart';

class TwitterTweetScreen extends StatefulWidget {
  const TwitterTweetScreen({super.key});
  static const String routeName = '/twitter_tweet_screen';

  @override
  State<TwitterTweetScreen> createState() => _TwitterTweetScreenState();
}

class _TwitterTweetScreenState extends State<TwitterTweetScreen> {
  final TextEditingController inputTweet = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 110,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: ButtonText(
            onPressed: () {
              inputTweet.clear();
              Navigator.pop(context);
            },
            text: 'Cancel',
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: ButtonRadius(
              onPressed: () {},
              text: 'Tweet',
            ),
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: WriteTweet(
          image: 'assets/images/account.png',
          textInput: 'What’s happening?',
          textEditingController: inputTweet,
        ),
      ),
    );
  }
}
