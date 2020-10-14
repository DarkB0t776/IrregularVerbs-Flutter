import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/words.dart';
import '../color_ball.dart';

class ColorsRow extends StatelessWidget {
  final Color wordColor;
  final String wordId;

  ColorsRow(this.wordColor, this.wordId);

  @override
  Widget build(BuildContext context) {
    final onPressColor = Provider.of<Words>(context).changeWordColor;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ColorBall(
            onPressHandler: () => onPressColor(Colors.white, wordId),
            wordColor: wordColor,
            customColor: Colors.white,
          ),
          ColorBall(
            onPressHandler: () => onPressColor(Colors.blue, wordId),
            wordColor: wordColor,
            customColor: Colors.blue,
          ),
          ColorBall(
            onPressHandler: () => onPressColor(Colors.orange[400], wordId),
            wordColor: wordColor,
            customColor: Colors.orange[400],
          ),
          ColorBall(
            onPressHandler: () => onPressColor(Colors.green, wordId),
            wordColor: wordColor,
            customColor: Colors.green,
          ),
          ColorBall(
            onPressHandler: () => onPressColor(Colors.red[400], wordId),
            wordColor: wordColor,
            customColor: Colors.red[400],
          ),
        ],
      ),
    );
  }
}
