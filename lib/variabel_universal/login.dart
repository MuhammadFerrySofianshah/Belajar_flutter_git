import 'package:flutter/material.dart';
import 'package:tess_flutter/variabel_universal/home.dart';

// harus stateful
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // contoller harus di dalam state
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  // buat function
  Future<void> vCallText() async {
    String vFirstName = firstNameController.text;
    String vLastName = lastNameController.text;
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Home(vFirstNameHome: vFirstName,vLastNameHome: vLastName,),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Text('TES AJA'),
                TextField(
                  controller: firstNameController,
                  decoration: const InputDecoration(labelText: 'first Name'),
                ),
                TextField(
                  controller: lastNameController,
                  decoration: const InputDecoration(labelText: 'Last Name'),
                ),
                ElevatedButton(
                  onPressed: () {
                    vCallText();
                  },
                  child: const Text('MASUK'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
