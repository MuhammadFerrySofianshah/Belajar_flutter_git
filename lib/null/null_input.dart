import 'package:flutter/material.dart';

class NullInput extends StatefulWidget {
  const NullInput({super.key});

  @override
  State<NullInput> createState() => _NullInputState();
}

class _NullInputState extends State<NullInput> {
  // controller
  final inputAngkaController = TextEditingController();
  // melihat hasil
  double? hasil;

  // pelaksanaannya
  void prosesInput() {
    // buat var input jadi string
    String inputAngka = inputAngkaController.text;
    // lalu ubah ke double
    double ubahStringToDouble = double.tryParse(inputAngka) ?? 0.0;
    setState(() {
      hasil = ubahStringToDouble;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: inputAngkaController,
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                inputAngkaController.text;
                prosesInput();
              },
              child: const Text('input angka'),
            ),
            Text('hasil ${hasil ?? ''}'),
          ],
        ),
      ),
    );
  }
}

