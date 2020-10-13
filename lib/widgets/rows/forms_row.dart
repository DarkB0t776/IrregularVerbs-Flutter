import 'package:flutter/material.dart';

class FormsRow extends StatelessWidget {
  final Color color = const Color(0xff941a12);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'INFINITIVE',
          style: TextStyle(color: color, fontWeight: FontWeight.bold),
        ),
        Text(
          'PAST SIMP.',
          style: TextStyle(color: color, fontWeight: FontWeight.bold),
        ),
        Text(
          'PAST PART.',
          style: TextStyle(color: color, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
