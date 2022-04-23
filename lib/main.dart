import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  void answerQuestion() {
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favorite color?',
      'what\'s your favorite color?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first project'),
        ),
        body: Column(
          children: [
            Text('The question!'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () => print('Answer 2 choosen'),
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () {
                //.....
                print('Answer 3 choosen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
