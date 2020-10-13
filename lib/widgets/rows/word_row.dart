import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/word.dart';
import '../../providers/words.dart';
import '../modals/word_modal.dart';

class WordRow extends StatelessWidget {
  final Word word;

  WordRow(this.word);

  Widget renderTranslate() {
    return Text(
      word.uaTranslate.join(', '),
      style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.w600),
    );
  }

  @override
  Widget build(BuildContext context) {
    final wordsData = Provider.of<Words>(context);

    return GestureDetector(
      onTap: () {
        wordsData.selectWord(word.id);
        showDialog(
            context: context, builder: (BuildContext context) => WordModal());
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    border:
                        Border(right: BorderSide(width: 1, color: Colors.red))),
                child: Center(
                  child: Text(
                    word.infinitiveForm.word,
                    style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    border:
                        Border(right: BorderSide(width: 1, color: Colors.red))),
                child: Center(
                  child: Text(
                    word.pastSimpleForm.word,
                    style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )),
              Expanded(
                child: Container(
                  child: Center(
                    child: Text(
                      word.pastPerfectForm.word,
                      style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
          renderTranslate(),
          SizedBox(height: 10)
        ],
      ),
    );
  }
}
