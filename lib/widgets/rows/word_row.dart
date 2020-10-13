import 'package:flutter/material.dart';

import '../../providers/word.dart';

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
    return Column(
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
    );
  }
}
