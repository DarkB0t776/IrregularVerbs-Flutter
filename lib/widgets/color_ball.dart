import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ColorBall extends StatelessWidget {
  final Color wordColor;
  final Function onPressHandler;
  Color customColor;

  ColorBall({
    this.customColor = Colors.white,
    @required this.onPressHandler,
    @required this.wordColor,
  });

  Widget renderCheckIcon() {
    if (wordColor == customColor) {
      return Center(child: Icon(MaterialCommunityIcons.check_outline));
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressHandler,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: customColor,
          border: Border.all(
            width: 2,
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: renderCheckIcon(),
      ),
    );
  }
}
