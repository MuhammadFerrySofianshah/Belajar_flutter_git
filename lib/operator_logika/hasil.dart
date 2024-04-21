import 'package:flutter/material.dart';

class HasilPage extends StatefulWidget {
  final int nilaiKamu;
  const HasilPage({Key? key, required this.nilaiKamu}) : super(key: key);

  @override
  State<HasilPage> createState() => _HasilPageState();
}

class _HasilPageState extends State<HasilPage> {
  String tes() {
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
          Text(tes()),
          
        ],
      )),
    );
  }
}
