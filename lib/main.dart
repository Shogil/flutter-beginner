import 'package:flutter/material.dart';
import 'package:flutter_sample_project/question.dart';
import 'package:flutter_sample_project/answer.dart';
import 'package:flutter_sample_project/quiz.dart';
import 'package:flutter_sample_project/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

//new
class _MyAppState extends State {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  final _questions = const [
    {
      'questionText': 'what\'s your favorite color?',
      'answer': ['Red', 'blue', 'black', 'green'],
    },
    {
      'questionText': 'what\'s your favorite Animal?',
      'answer': ['Monkey', 'Lion', 'panda', 'Jiraffe'],
    },
    {
      'questionText': 'what is your Place?',
      'answer': ['Kerala', 'Goa', 'Tamil nadu', 'Karnataka'],
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
