import 'package:flutter/material.dart';

import './word.dart';

class Words with ChangeNotifier {
  final List<Word> _words = [
    Word(
        id: '1',
        infinitiveForm: InfinitiveForm(
            word: 'abide', transcript: '/əˈbʌɪd/', audio: 'abide1.mp3'),
        pastSimpleForm: PastSimpleForm(
            word: 'abode', transcript: '/əˈbəʊd/', audio: 'abode2.mp3'),
        pastPerfectForm: PastPerfectForm(
            word: 'abode', transcript: '/əˈbəʊd/', audio: 'abode3.mp3'),
        definition:
            'to accept or bear (someone or something bad, unpleasant, etc.); to remain, continue, stay',
        uaTranslate: [
          'терпіти',
          'дотримуватися',
          'перебувати'
        ],
        examples: [
          'I cannot abide her constant unpunctuality.',
          'The employees must abide by the rules of the company.',
          'Bill always abides by his promises.',
        ]),
    Word(
        id: '2',
        infinitiveForm: InfinitiveForm(
            word: 'arise', transcript: '/əˈrʌɪz/', audio: 'arise.mp3'),
        pastSimpleForm: PastSimpleForm(
            word: 'arose', transcript: '/əˈrəʊz/', audio: 'arose.mp3'),
        pastPerfectForm: PastPerfectForm(
            word: 'arisen', transcript: '/əˈrɪz(ə)n/', audio: 'arisen.mp3'),
        definition:
            'to originate; to get up from horizontal position, out of bed; to come into existence',
        uaTranslate: [
          'виникати',
          'підніматися'
        ],
        examples: [
          'Problems always arise during such protests for human rights.',
          'Disputes arose over who would be the first to speak.',
          'Many questions have arisen recently over the origin of life.',
        ]),
    Word(
        id: '3',
        infinitiveForm: InfinitiveForm(
            word: 'awake', transcript: '/əˈweɪk/', audio: 'abide1.mp3'),
        pastSimpleForm: PastSimpleForm(
            word: 'awoke', transcript: '/əˈwəʊk/', audio: 'abode2.mp3'),
        pastPerfectForm: PastPerfectForm(
            word: 'awoken', transcript: '/əˈwəʊk(ə)n/', audio: 'abode3.mp3'),
        definition: 'to stop sleeping; to wake up',
        uaTranslate: [
          'будити',
          'прокидатися'
        ],
        examples: [
          'Mary will awake in an hour because she has to go to work.',
          'I awoke in the middle of the night when I heard that noise.',
          'The patient has awoken from a two-week coma.',
        ]),
  ];

  Word _selectedWord;

  //Getters
  List<Word> get items {
    return _words;
  }

  Word get selectedWord {
    return _selectedWord;
  }

  // Methods
  void selectWord(id) {
    _selectedWord = _words.firstWhere((word) => word.id == id);
    notifyListeners();
  }
}
