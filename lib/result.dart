import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  Result(this.resultScore, this.resetQuiz);

    String get resultPhrase {
    String resultText;
    if (resultScore > 26) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore > 20) {
      resultText = 'Pretty likeable!';
    } else if (resultScore > 10) {
      resultText = 'Need to improve your skill!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetQuiz,
            child: Text('Reset Quiz!'),
          ),
        ],
      ),
    );
  }
}