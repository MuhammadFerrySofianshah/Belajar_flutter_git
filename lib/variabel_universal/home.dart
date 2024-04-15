import 'package:flutter/material.dart';
import 'package:tess_flutter/variabel_universal/login.dart';

class Home extends StatefulWidget {
  final String vFirstName;
  final String vLastName;
  const Home({Key? key, required this.vFirstName, required this.vLastName})
      : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            // cara yg salah. hasilnya akan = home.vUserName
            Text('Halo, $widget.vFirstName $widget.vLastName'),
            // normal
            Text('Halo, ${widget.vFirstName} ${widget.vLastName}'),
            // kapital
            Text(
                'Halo, ${widget.vFirstName.toUpperCase()} ${widget.vLastName.toUpperCase()} '),

            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ));
                },
                child: const Text('back to login'))
          ],
        ),
      ),
    );
  }
}
