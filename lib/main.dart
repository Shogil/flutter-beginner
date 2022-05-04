import 'package:flutter/material.dart';
import 'package:flutter_sample_project/quiz.dart';
import 'package:flutter_sample_project/result.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

//new
class _MyAppState extends State {
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // ignore: avoid_print
    print(_questionIndex);
  }

  final _questions = const [
    {
      'questionText': 'what\'s your favorite color?',
      'answer': [
        {'text': 'Red', 'score': 7},
        {'text': 'blue', 'score': 5},
        {'text': 'black', 'score': 10},
        {'text': 'green', 'score': 4},
      ],
    },
    {
      'questionText': 'what\'s your favorite Animal?',
      'answer': [
        {'text': 'Rabbit', 'score': 7},
        {'text': 'Snake', 'score': 5},
        {'text': 'Elephant', 'score': 10},
        {'text': 'Lion', 'score': 4},
      ],
    },
    {
      'questionText': 'what is your favorite Place?',
      'answer': [
        {'text': 'Kerala', 'score': 7},
        {'text': 'Goa', 'score': 5},
        {'text': 'Delhi', 'score': 10},
        {'text': 'Chennai', 'score': 4},
      ],
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first project'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
