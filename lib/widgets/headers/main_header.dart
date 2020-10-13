import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class MainHeader extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      backgroundColor: Theme.of(context).primaryColor,
      title: Text(
        'COLOR VERBS',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.school),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            FontAwesome.university,
            size: 18,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
