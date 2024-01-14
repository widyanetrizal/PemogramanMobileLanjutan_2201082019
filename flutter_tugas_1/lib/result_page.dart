import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String kode;
  final String nama;
  final String harga;
  

  ResultPage({
    required this.kode,
    required this.nama,
    required this.harga,
    
  });

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        title: Text("Hasil Data"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildResultRow("Kode Barang:", kode),
            buildResultRow("Nama Barang:", nama),
            buildResultRow("Harga:", harga),
          ],
        ),
      ),
    );
  }

  Widget buildResultRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text(value),
        ],
      ),
    );
  }
}
