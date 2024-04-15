import 'package:flutter/material.dart';

class StringTest extends StatelessWidget {
  
  const StringTest({super.key});

  @override
  Widget build(BuildContext context) {
    String vFirstName = 'Muhammad';
    String vLastName = 'Ferry';
    return Scaffold(
      body: Center(child: Text('halo, $vFirstName $vLastName')),
    );
  }
}