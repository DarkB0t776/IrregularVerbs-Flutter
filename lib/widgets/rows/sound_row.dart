import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../models/word.dart';

class SoundRow extends StatelessWidget {
  final Word word;
  final assetsAudioPlayer = AssetsAudioPlayer();

  SoundRow(this.word);

  void _playSound(String soundName) {
    Fluttertoast.showToast(
      msg: soundName.replaceFirst('.mp3', ''),
      toastLength: Toast.LENGTH_SHORT,
    );
    assetsAudioPlayer.open(
      Audio("assets/sounds/$soundName"),
    );
  }

  @override
  Widget build(BuildContext context) {
    const double padding = 30.0;
    const double iconSize = 35.0;

    return Padding(
      padding: const EdgeInsets.only(left: padding, right: padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(AntDesign.sound),
            onPressed: () => _playSound(word.infinitiveForm.audio),
            iconSize: iconSize,
          ),
          IconButton(
            icon: Icon(AntDesign.sound),
            onPressed: () => _playSound(word.pastSimpleForm.audio),
            iconSize: iconSize,
          ),
          IconButton(
            icon: Icon(AntDesign.sound),
            onPressed: () => _playSound(word.pastPerfectForm.audio),
            iconSize: iconSize,
          ),
        ],
      ),
    );
  }
}
