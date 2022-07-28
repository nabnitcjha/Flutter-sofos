import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        // color: Colors.blue,
        // textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
        style: ElevatedButton.styleFrom(
           primary: Colors.purple,
           padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
           textStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold),
        )
      ),
    );
  }
}
