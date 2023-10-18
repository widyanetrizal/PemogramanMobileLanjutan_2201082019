import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Container(
            color: Colors.amber,
          ),
          leadingWidth: 100,

          title: Container(
            // width: 35,
            height: 35,
            color: Colors.red,
          ),
          // titleSpacing: 0,
          centerTitle: false,

          actions: [
            Container(
              width: 50,
              // height: 35,
              color: Colors.purple,
            ),
            Container(
              width: 50,
              // height: 35,
              color: Colors.black,
            ),
            Container(
              width: 50,
              // height: 35,
              color: Colors.purple,
            ),
            Container(
              width: 50,
              // height: 35,
              color: Colors.black,
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(200),
            child: Container(
              width: 50,
              height: 200,
              color: Colors.black,
            ),
          ),
          flexibleSpace: Container(
            // width: 50,
            height: 200,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
