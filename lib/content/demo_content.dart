import 'package:flutter/material.dart';

class QuestionSet {
  String Q;
  List<String> options;
  int A;

  QuestionSet(
    this.Q,
    this.options,
    this.A,
  );
}

class ConvoSet extends QuestionSet {
  String link;

  ConvoSet(String Q, List<String> options, int A, this.link)
      : super(Q, options, A);
}

var listenSets = <ConvoSet>[
  ConvoSet(
    // https://drive.google.com/file/d/16pGL1r-otisNb5Gv3YkOeO-l35i9QTdf/view?usp=share_link
    'What sound did you hear?',
    [
      'Nǐ hǎo (你好，Hello）',
      'hǎo （好，Good)',
      'Zài jiàn （再见，goodbye）',
    ],
    0,
    'assets/video/Vnihao.mp4',
  ),
  ConvoSet(
    // https://drive.google.com/file/d/12cj5XWRGDm8FdyipeF1pJXSDDq92gakT/view?usp=share_link
    'What does this phrase mean?',
    [
      'Hello',
      'Friend',
      'Goodbye',
    ],
    2,
    'assets/video/Rzaijian.mp4',
  ),
  ConvoSet(
    //https://drive.google.com/file/d/1clZ239_W88P5k9F-MeuivcBr7i8O1p8M/view?usp=share_link
    'What sound do you hear?',
    [
      'hǎo (good)',
      'Nǐ （you）',
      'Zài （again）',
    ],
    0,
    'assets/video/hao.mp4',
  ),
];

var flashcardSets = <QuestionSet>[
  QuestionSet(
    'What does 你 (nǐ)mean?',
    [
      'goodbye; see you again',
      'you(singular)',
      'Hello',
      'I;me',
    ],
    1,
  ),
  QuestionSet(
    'Which one of these is "Hello"',
    [
      '你好 （Nǐ hǎo）',
      '我 (Wǒ）',
      '你 （Nǐ）',
      '再见 （Zài jiàn）',
    ],
    0,
  ),
  QuestionSet(
    'Which one of these is "Bye"',
    [
      '你好 （Nǐ hǎo）',
      '我 （Wǒ）',
      '你 （Nǐ）',
      '再见 （Zài jiàn）',
    ],
    3,
  ),
];
