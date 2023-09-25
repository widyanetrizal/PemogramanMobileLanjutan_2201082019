import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void selectAnswer() {
    print('Answer select ');
  }

  // This widget is the root of your application.
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
              Text('Button 2019'),
              ElevatedButton(onPressed: selectAnswer, child: Text('Answer 1')),
              ElevatedButton(onPressed: selectAnswer, child: Text('Answer 2')),
              ElevatedButton(onPressed: selectAnswer, child: Text('Answer 3')),
              ElevatedButton(onPressed: selectAnswer, child: Text('Answer 4')),
            ],
          )),
    );
  }
}
