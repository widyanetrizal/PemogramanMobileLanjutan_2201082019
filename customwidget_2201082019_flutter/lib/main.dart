import 'package:flutter/material.dart';
import 'mycontainer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return MaterialApp(home: Scaffold(
      backgroundColor: Colors.red,
      body: 
      SafeArea(
        child: Mycontainer('Widya Netrizal'),
      )
    )
    );
  }
}