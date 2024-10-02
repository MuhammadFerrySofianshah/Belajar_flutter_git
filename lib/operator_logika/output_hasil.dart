import 'package:flutter/material.dart';
import 'package:belajar_flutter_git/operator_logika/input_nilai.dart';

class OutputHasilPage extends StatefulWidget {
  final int nilaiKamu;
  const OutputHasilPage({Key? key, required this.nilaiKamu}) : super(key: key);

  @override
  State<OutputHasilPage> createState() => _OutputHasilPageState();
}
class _OutputHasilPageState extends State<OutputHasilPage> {
  String vHasilTes() {
    // jika nilai di atas 70 'kamu lulus'. dibawah 70 'kamu gagal'.
    if (widget.nilaiKamu > 70) {
      return 'kamu lulus';
    } else {
      return 'kamu gagal';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('nilai kamu: ${widget.nilaiKamu}'),
          Text(vHasilTes()),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => InputNilaiPage()));
            },
            child: const Text('kembali'),
          )
        ],
      )),
    );
  }
}
