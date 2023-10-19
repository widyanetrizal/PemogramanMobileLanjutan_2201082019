import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Telah di klik");
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("CONFIRM"),
                content: Text("Are you sure to delete this item ? "),
                actions: [
                  FlatButton(
                    onPressed: {} {},
                    child: Text("No"),
                  ),
                  RaisedButton(
                    onPressed: {} {},
                    child: Text("Yes"),
                    
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.delete),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

