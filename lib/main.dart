import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return MyAppState();
    // throw UnimplementedError();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestions() {
    setState(() {
      questionIndex++;
    });

    print(questionIndex);
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
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestions,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: answerQuestions,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: answerQuestions,
            ),
          ],
        ),
      ),
    );

    // TODO: implement build
    // throw UnimplementedError();
  }
}
