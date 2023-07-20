import 'package:flutter/material.dart';
import 'package:flutter_twitter_clone_ui/utils/color.dart';

class WriteTweet extends StatelessWidget {
  const WriteTweet(
      {super.key,
      required this.image,
      required this.textInput,
      required this.textEditingController});

  final String image;
  final String textInput;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 8),
            child: Image.asset(
              image,
              height: 37,
              width: 37,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.84,
            child: TextFormField(
              keyboardType: TextInputType.multiline,
              maxLines: 3,
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                hintText: 'What’s happening?',
                hintStyle: TextStyle(
                  color: cGrey,
                  fontSize: 19,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.5,
                ),
                border: InputBorder.none,
                fillColor: bgColor,
                filled: true,
              ),
              controller: textEditingController,
            ),
          ),
        ],
      ),
    );
  }
}
