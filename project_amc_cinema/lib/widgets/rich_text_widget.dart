import 'package:flutter/material.dart';


class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key, required this.lineText});
  final String lineText;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
          children: [
            TextSpan(
              text: "-   ",
              style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            TextSpan(text:lineText)
          ]),
    );
  }
}
