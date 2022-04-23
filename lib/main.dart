import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first project'),
        ),
        body: Text('This is the first text'),
      ),
    );
  }
}
