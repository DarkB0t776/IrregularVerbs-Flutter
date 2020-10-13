import 'package:flutter/material.dart';

import '../../providers/word.dart';
import '../rows/word_row.dart';

class WordsColumn extends StatelessWidget {
  final List<Word> words;

  WordsColumn(this.words);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        // shrinkWrap: true,
        itemCount: words.length,
        itemBuilder: (BuildContext context, int idx) {
          return WordRow(words[idx]);
        },
      ),
    );
  }
}
