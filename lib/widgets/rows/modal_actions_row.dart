import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ModalActionsRow extends StatelessWidget {
  final double size = 30.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
                icon: Icon(MaterialCommunityIcons.card_text_outline),
                onPressed: () {},
                iconSize: size),
            IconButton(
                icon: Icon(SimpleLineIcons.share),
                onPressed: () {},
                iconSize: size),
          ],
        ),
        IconButton(
            icon: Icon(MaterialCommunityIcons.close_outline),
            onPressed: () {
              Navigator.pop(context);
            },
            iconSize: size)
      ],
    );
  }
}
