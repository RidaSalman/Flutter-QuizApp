import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final int result_score;
  final VoidCallback resetHandler;

  result(this.result_score, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (result_score <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (result_score <= 12) {
      resultText = 'Pretty Likeable!';
    } else if (result_score <= 16) {
      resultText = 'You are strange ?!';
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
          FlatButton(
            child: Text(
              'Reset Quiz',
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
