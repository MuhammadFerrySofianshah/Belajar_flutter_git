// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:tess_flutter/operator_logika/hasil.dart';

class NilaiPage extends StatefulWidget {
  final nilaiController = TextEditingController();
  NilaiPage({Key? Key}) : super(key: Key);

  @override
  State<NilaiPage> createState() => _NilaiPageState();
}

class _NilaiPageState extends State<NilaiPage> {
  final nilaiController = TextEditingController();
  void vInputNilai() {
    String inputAngka = nilaiController.text;
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HasilPage(
            nilaiKamu: int.parse(inputAngka),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nilaiController,
            ),
            ElevatedButton(
                onPressed: () {
                  nilaiController;
                  vInputNilai();
                },
                child: const Text('input nilai'))
          ],
        ),
      ),
    );
  }
}
