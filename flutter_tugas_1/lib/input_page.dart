import 'package:flutter/material.dart';
import 'result_page.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  TextEditingController kodeController = TextEditingController();
  TextEditingController namaController = TextEditingController();
  TextEditingController hargaController = TextEditingController();
  

  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
    borderSide: BorderSide(color: Colors.black, width: 2.0),
  );

  final TextStyle buttonTextStyle = TextStyle(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Barang"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildLinedTextField(kodeController, "Kode Barang"),
            buildLinedTextField(namaController, "Nama Barang"),
            buildLinedTextField(hargaController, "Harga"),
            
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                        kode: kodeController.text,
                        nama: namaController.text,
                        harga: hargaController.text,
                        
                      ),
                    ),
                  );
                },
                child: Text("Proses", style: buttonTextStyle),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLinedTextField(
      TextEditingController controller, String labelText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(labelText),
          Container(
            width: 200,
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                border: outlineInputBorder,
                isDense: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
