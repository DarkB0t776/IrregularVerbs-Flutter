import 'package:flutter/material.dart';

class TextColumn extends StatelessWidget {
  final String title;
  final String text;

  TextColumn(this.title, this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Color(0xff941a12), fontWeight: FontWeight.bold),
          ),
          Text(text),
        ],
      ),
    );
  }
}
