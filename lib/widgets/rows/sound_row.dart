import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../../models/word.dart';

class SoundRow extends StatelessWidget {
  final Word word;

  SoundRow(this.word);

  @override
  Widget build(BuildContext context) {
    const double padding = 30.0;
    const double iconSize = 35.0;

    return Padding(
      padding: const EdgeInsets.only(left: padding, right: padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(AntDesign.sound),
            onPressed: () {},
            iconSize: iconSize,
          ),
          IconButton(
            icon: Icon(AntDesign.sound),
            onPressed: () {},
            iconSize: iconSize,
          ),
          IconButton(
            icon: Icon(AntDesign.sound),
            onPressed: () {},
            iconSize: iconSize,
          ),
        ],
      ),
    );
  }
}
