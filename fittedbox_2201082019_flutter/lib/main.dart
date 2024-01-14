import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fitted Box"),
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            color: Color.fromARGB(255, 17, 181, 218),
            child: FittedBox(
              alignment: Alignment.bottomCenter,
              child: Text("widyanetrizal"),
            ),
          ),
        ),
      ),
    );
  }
}
