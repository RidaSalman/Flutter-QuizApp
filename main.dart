import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(myApp());

class myApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return myAppState();
  }
}

class myAppState extends State<myApp> {
  final questions = const [
    {
      'questionText': 'What\'s your favourite color ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal ?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'What\'s your favourite Instructor ?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Menu', 'score': 1},
        {'text': 'Mchill', 'score': 1},
        {'text': 'Michael', 'score': 1},
      ],
    },
  ];
  var questionIndex = 0;
  var total_score = 0;

  void reset_quiz() {
    setState(() {
      questionIndex = 0;
      total_score = 0;
    });
  }

  void answerQuestion(int score) {
    //var aBool = true;
    //aBool = false;
    total_score += score;

    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
    if (questionIndex < questions.length) {
      print('We have more question!');
    } else {
      print('No more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    //questions = []; //does not work if questions is const
    // var dummy = const ['hello'];
    // dummy.add('max');
    // print(dummy);
    // dummy=[];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: questionIndex < questions.length
            ? quiz(
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
                questions: questions,
              )
            : result(total_score, reset_quiz),
      ),
    );
  }
}
