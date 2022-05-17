import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // _answerQuestion func pointer
  // it's stored in a variable func selectHandler
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, String this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(answerText),
          onPressed: selectHandler),
    );
  }
}
