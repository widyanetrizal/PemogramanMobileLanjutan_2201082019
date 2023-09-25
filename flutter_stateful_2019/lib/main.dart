import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void selectAnswer() {
    setState(() {
      if (questionIndex < questions.length - 1) {
        questionIndex = questionIndex + 1;
      } else {
        questionIndex = 0;
      }
    });

    print(questionIndex);
  }

  // Daftar pertanyaan
  var questions = [
    'What is your favorite color?',
    'What is your favorite food?'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[20],
        appBar: AppBar(
          title: Text('My First App 2019'),
          backgroundColor: Colors.cyan,
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(onPressed: selectAnswer, child: Text('Answer 1')),
            ElevatedButton(onPressed: selectAnswer, child: Text('Answer 2')),
            ElevatedButton(onPressed: selectAnswer, child: Text('Answer 3')),
            ElevatedButton(onPressed: selectAnswer, child: Text('Answer 4')),
          ],
        ),
      ),
    );
  }
}
