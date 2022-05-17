import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // _answerQuestion func pointer
  // it's stored in a variable func selectHandler
  final VoidCallback selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('Answer 1'),
          onPressed: selectHandler),
    );
  }
}
