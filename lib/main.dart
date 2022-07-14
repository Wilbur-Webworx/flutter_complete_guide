import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return _MyAppState();
    // throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questionIndex++;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What is your favourite color?",
      "What is your favourite animal?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: _answerQuestions,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: _answerQuestions,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: _answerQuestions,
            ),
          ],
        ),
      ),
    );

    // TODO: implement build
    // throw UnimplementedError();
  }
}
