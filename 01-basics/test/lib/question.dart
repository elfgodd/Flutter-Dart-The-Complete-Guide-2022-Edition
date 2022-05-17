import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // const MyWidget({Key? key}) : super(key: key);

  var questionText;

  // Question constructor
  // This is the short form
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
      questionText,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
    ),);
  }
}
