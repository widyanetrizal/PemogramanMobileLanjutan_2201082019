import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Image widget"),
          ),
          body: Center(
            child: Container(
              width: 350,
              height: 500,
              color: Colors.cyanAccent,
              child: Image.asset("imageS/nisa1.jpg", fit: BoxFit.cover),
              // child: Image(
              //   fit: BoxFit.cover,
              //     image: AssetImage("images/foto.jpg")), // GAMBAR DI AMBIL DARI FILE
              //image: NetworkImage("https://picsum.photos/200/300"), // GAMBER DI AMBIL SECARA ONLINE
            ),
          )),
    );
  }
}
