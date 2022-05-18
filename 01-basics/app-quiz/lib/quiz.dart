import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  // final List questions;
  final int questionIndex;  
  final Function answerQuestion; // use VoidCallback in case of error

  // In newer version just just (required) without the @ and ()
  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
                 // as String or !
          ),
        // ElevatedButton() is the new RaisedButton
        // Passing a func _answerQuestion
        // to a Widget Answer
        // Answer(_answerQuestion), // 3 times

        // Anonymous func because we will use it just here
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']) as String, answer['text'] as String);
        }).toList() // Generates a new List
      ],
    );
  }
}