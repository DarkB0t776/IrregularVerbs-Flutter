import 'package:flutter/material.dart';

class FormsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const Color color = const Color(0xff941a12);
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
