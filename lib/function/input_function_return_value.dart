// ketika user menginput kalimat maka akan tampil di bagian bawah

import 'package:flutter/material.dart';

class SimpleInputText extends StatefulWidget {
  const SimpleInputText({super.key});

  @override
  State<SimpleInputText> createState() => SimpleInputTextState();
}

class SimpleInputTextState extends State<SimpleInputText> {
  final inputController = TextEditingController();
  String hasilInputanKata = '';
  void inputKata() {
    String kataYangDiinput = inputController.text;

    if (kataYangDiinput.isEmpty) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(title: Text('Input Terlebih dulu.'),),
      );
    } else {
      setState(() {
        hasilInputanKata = kataYangDiinput.toUpperCase();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Input Text'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: inputController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Input Text',
              ),
            ),
            ElevatedButton(onPressed: () => inputKata(), child: Text('Submit')),
            Text('hasilnya adalah : $hasilInputanKata')
          ],
        ),
      ),
    );
  }
}
