import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/words.dart';
import '../rows/modal_actions_row.dart';
import '../rows/colors_row.dart';
import '../rows/transcript_row.dart';
import '../rows/sound_row.dart';
import '../columns/text_column.dart';

class WordModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final selectedWord = Provider.of<Words>(context).selectedWord;

    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ModalActionsRow(),
                  ColorsRow(selectedWord.color, selectedWord.id),
                  TranscriptRow(selectedWord),
                  SoundRow(selectedWord),
                  Text(
                    selectedWord.uaTranslate.join(', '),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue[900], fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Image(
                        image: AssetImage(selectedWord.image),
                        width: 100,
                        height: 150),
                  ),
                  TextColumn('Definition', selectedWord.definition),
                  TextColumn('Examples', selectedWord.examples.join('\n')),
                ],
              ),
            ),
          ),
        ));
  }
}
