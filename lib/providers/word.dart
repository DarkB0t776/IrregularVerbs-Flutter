import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class InfinitiveForm {
  final String word;
  final String transcript;
  final String audio;
  final int wrong;

  InfinitiveForm(
      {@required this.word,
      @required this.transcript,
      @required this.audio,
      this.wrong = 0});
}

class PastSimpleForm {
  final String word;
  final String transcript;
  final String audio;
  final int wrong;

  PastSimpleForm(
      {@required this.word,
      @required this.transcript,
      @required this.audio,
      this.wrong = 0});
}

class PastPerfectForm {
  final String word;
  final String transcript;
  final String audio;
  final int wrong;

  PastPerfectForm(
      {@required this.word,
      @required this.transcript,
      @required this.audio,
      this.wrong = 0});
}

class Word with ChangeNotifier {
  final String id;
  final InfinitiveForm infinitiveForm;
  final PastSimpleForm pastSimpleForm;
  final PastPerfectForm pastPerfectForm;
  final String definition;
  final List<String> uaTranslate;
  final List<String> examples;
  final Color color;
  final int stars;
  final int practiced;
  final int fail;
  final int skipped;
  final int passed;

  Word(
      {@required this.id,
      @required this.infinitiveForm,
      @required this.pastSimpleForm,
      @required this.pastPerfectForm,
      @required this.definition,
      @required this.uaTranslate,
      @required this.examples,
      this.color = Colors.white,
      this.stars = 0,
      this.practiced = 0,
      this.fail = 0,
      this.skipped = 0,
      this.passed = 0});
}
