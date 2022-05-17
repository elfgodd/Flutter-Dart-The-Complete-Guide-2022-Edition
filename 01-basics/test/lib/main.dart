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
    // Map
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['black' ,'red', 'green', 'white'],        
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['rabbit' ,'snake', 'elephant', 'lion'],        
      },
       {
        'questionText': 'Who\'s your favorite instructor?',
        'answers': ['max' ,'max', 'max', 'max'],        
      }
      ,
      
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
          Question(questions[_questionIndex]),
            // ElevatedButton() is the new RaisedButton
            // Passing a func _answerQuestion
            // to a Widget Answer
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
