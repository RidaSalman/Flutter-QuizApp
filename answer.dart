import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answertext;
  Answer(this.selectHandler, this.answertext);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answertext),
        onPressed: selectHandler,
      ),
    );
  }
}
