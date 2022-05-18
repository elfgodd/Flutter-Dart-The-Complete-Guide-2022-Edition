import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler; // accepting resetQuiz here

  Result(this.resultScore, this.resetHandler);

  // A getter is a normal property but the value is calculate dynamically
  String get resultPhrase {
    // We always have to return something in a getter
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
       Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
       ),
       FlatButton(
         child: Text('Restart Quiz!',
         ),
         textColor: Colors.blue,
         onPressed: resetHandler,
       ),
      ],
     ),
    );
  }
}
