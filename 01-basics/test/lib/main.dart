import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 5},
        {'text': 'green', 'score': 3},
        {'text': 'white', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'rabbit', 'score': 3},
        {'text': 'snake', 'score': 11},
        {'text': 'elephant', 'score': 5},
        {'text': 'lion', 'score': 9}
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'max', 'score': 1},
        {'text': 'fernando herrera', 'score': 1},
        {'text': 'john smilga', 'score': 1},
        {'text': 'codeninja', 'score': 1},
      ],
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  // passing the score we need to calculate (int score)
  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // List that holds a Map
    // a Map inside a List
    // const questions = const []

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore), // Center centers the content Horizontally and Vertically
      ),
    );
  }
}
