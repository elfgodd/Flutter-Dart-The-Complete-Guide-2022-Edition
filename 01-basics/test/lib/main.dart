import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // List that holds a Map
    // a Map inside a List
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['black', 'red', 'green', 'white'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['rabbit', 'snake', 'elephant', 'lion'],
      },
      {
        'questionText': 'Who\'s your favorite instructor?',
        'answers': ['max', 'max', 'max', 'max'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            // ElevatedButton() is the new RaisedButton
            // Passing a func _answerQuestion
            // to a Widget Answer
            // Answer(_answerQuestion), // 3 times

            // Anonymous func because we will use it just here
            ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList() // Generates a new List
          ],
        ),
      ),
    );
  }
}
