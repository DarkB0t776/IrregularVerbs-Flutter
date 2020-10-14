import 'package:flutter/material.dart';

import '../../models/word.dart';

class TranscriptRow extends StatelessWidget {
  final Word word;

  TranscriptRow(this.word);

  Widget renderTextColumn(String word, String transcript) {
    return Column(
      children: [
        Text(word, style: TextStyle(fontWeight: FontWeight.bold)),
        Text(transcript),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          renderTextColumn(
              word.infinitiveForm.word, word.infinitiveForm.transcript),
          renderTextColumn(
              word.pastSimpleForm.word, word.pastSimpleForm.transcript),
          renderTextColumn(
              word.pastPerfectForm.word, word.pastPerfectForm.transcript),
        ],
      ),
    );
  }
}
