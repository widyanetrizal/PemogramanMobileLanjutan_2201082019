import 'package:drawer_2201082012/drawer.dart';
import 'package:drawer_2201082012/drawer.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  static const routesName = '/setting';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DRAWER"),
        centerTitle: true,
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Text(
          "Setting",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
