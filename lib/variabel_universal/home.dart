import 'package:flutter/material.dart';
import 'package:tess_flutter/variabel_universal/login.dart';

class Home extends StatefulWidget {
  final String vFirstNameHome;
  final String vLastNameHome;
  const Home({Key? key, required this.vFirstNameHome, required this.vLastNameHome})
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
            Text('Halo, ${widget.vFirstNameHome} ${widget.vLastNameHome}'),
            // kapital
            Text(
                'Halo, ${widget.vFirstNameHome.toUpperCase()} ${widget.vLastNameHome.toUpperCase()} '),

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
