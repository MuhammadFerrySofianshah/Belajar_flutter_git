import 'package:flutter/material.dart';

class IncrementTest extends StatefulWidget {
  const IncrementTest({super.key});

  @override
  State<IncrementTest> createState() => _IncrementTestState();
}

class _IncrementTestState extends State<IncrementTest> {
  int vAngka = 0;
  void vIncrement() {
    setState(() {
      vAngka = vAngka - 1;
      // disingkat jadii..
      vAngka--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('$vAngka'),
            ElevatedButton(
                onPressed: vIncrement, child: const Text('TAMBAH DATA')),
          ],
        ),
      ),
    );
  }
}
