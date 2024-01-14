import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
void selectAnswer(){
  print('Jawaban Dipilih');
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 210, 194, 253),
        appBar: AppBar(
          title: Text('WidyaNetrizal'),
          backgroundColor: const Color.fromARGB(255, 243, 172, 255),
        ),
        body: Column(
          children: [
            Text('Pertanyaan Pertama'),
            TextButton(child: Text('Jawaban 1'), onPressed: selectAnswer),
            TextButton(child: Text('Jawaban 2'), onPressed: selectAnswer),
            TextButton(child: Text('Jawaban 3'), onPressed: selectAnswer),
            ElevatedButton(onPressed: selectAnswer, child: Text('jawaban 4')),

          ],
        ),
      ),
    );
  }
}
