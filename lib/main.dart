import 'package:flutter/material.dart';
import 'package:tess_flutter/increment_decrement/increment.dart';
import 'package:tess_flutter/operator_%20logika/output_hasil.dart';
import 'package:tess_flutter/operator_%20logika/input_nilai.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
    
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  InputNilaiPage(),
    );
  }
}


