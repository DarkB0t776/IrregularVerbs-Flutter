import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/words.dart';

class MainScreen extends StatelessWidget {
  static const routeName = 'MainScreen';

  @override
  Widget build(BuildContext context) {
    final wordsData = Provider.of<Words>(context);
    final words = wordsData.items;

    return Scaffold(
      body: Container(
        child: Center(
          child: Text(words[0].infinitiveForm.word),
        ),
      ),
    );
  }
}
