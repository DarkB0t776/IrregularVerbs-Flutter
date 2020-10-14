import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/words.dart';
import '../widgets/headers/main_header.dart';
import '../widgets/rows/forms_row.dart';
import '../widgets/columns/words_column.dart';

class MainScreen extends StatelessWidget {
  static const routeName = 'MainScreen';

  @override
  Widget build(BuildContext context) {
    final wordsData = Provider.of<Words>(context);
    final words = wordsData.items;

    return Scaffold(
      appBar: MainHeader(),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            FormsRow(),
            WordsColumn(words),
          ],
        ),
      ),
    );
  }
}
