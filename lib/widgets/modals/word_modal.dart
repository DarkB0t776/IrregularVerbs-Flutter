import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/words.dart';
import '../rows/modal_actions_row.dart';

class WordModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final selectedWord = Provider.of<Words>(context).selectedWord;

    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ModalActionsRow(),
              ],
            ),
          ),
        ));
  }
}
