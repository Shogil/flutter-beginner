import 'package:flutter/material.dart';
import 'package:flutter_sample_project/question.dart';
import 'package:flutter_sample_project/answer.dart';

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

  @override
  Widget build(BuildContext context) {
    final questions = const [
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first project'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'] as String,
            ),
            ...(questions[_questionIndex]['answer'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
