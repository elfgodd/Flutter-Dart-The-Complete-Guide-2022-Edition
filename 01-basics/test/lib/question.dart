import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // const MyWidget({Key? key}) : super(key: key);

  final String questionText;

  // Question constructor
  // This is the short form
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
