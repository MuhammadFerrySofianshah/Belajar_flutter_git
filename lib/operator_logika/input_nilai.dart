// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:tess_flutter/operator_logika/output_hasil.dart' ;

class InputNilaiPage extends StatefulWidget {
  final nilaiController = TextEditingController();
  InputNilaiPage({Key? Key}) : super(key: Key);

  @override
  State<InputNilaiPage> createState() => _NilaiPageState();
}

class _NilaiPageState extends State<InputNilaiPage> {
  final nilaiController = TextEditingController();
  void inputResult() {
    String inputNilai = nilaiController.text;

    if (inputNilai.isEmpty) {
      // jika kosong tidak ada interaksi
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(title: Text('Data Kosong')),
      );
      return;
    }

    int ubahStringToInt = int.parse(inputNilai); // mengubah string ke int

    //  Jika menggunakan &&, tidak akan berfungsi karena variabel tidak dapat dievaluasi secara bersamaan.
    // Jika menggunakan ||, akan berfungsi karena variabel dievaluasi secara sendiri.
    
    /*   if (ubahStringToInt < 0 || ubahStringToInt > 100) {
        showDialog(
            context: context,
            builder: (context) => const AlertDialog(
                  title: Text('Tidak bisa < 0 atau > 100'),
                ));
      } else {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HasilPage(
                nilaiKamu: ubahStringToInt,
              ),
            ));
      }
    } */
  

    //  Jika menggunakan ||, tidak akan berfungsi karena variabel tidak dapat dievaluasi secara sendiri.
    // Jika menggunakan &&, akan berfungsi karena variabel dievaluasi secara bersamaan.
    if (ubahStringToInt >= 0 && ubahStringToInt <= 100) {
      Navigator.pushReplacement(  
          context,
          MaterialPageRoute(
            builder: (context) => OutputHasilPage(
              nilaiKamu: ubahStringToInt,
            ),
          ));
    } else {
      showDialog(
          context: context,
          builder: (context) => const AlertDialog(
                title: Text('Tidak bisa < 0 atau > 100'),
              ));
    }
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
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                  onPressed: () {
                    nilaiController;
                    inputResult();
                  },
                  child: const Text('input nilai')),
            )
          ],
        ),
      ),
    );
  }
}
