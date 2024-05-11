import 'package:flutter/material.dart';

class ForList extends StatefulWidget {
  const ForList({super.key});

  @override
  State<ForList> createState() => _ForListState();
}

class _ForListState extends State<ForList> {
  final inputListController = TextEditingController();
  List items = <String>[];
  void tambahData() {
    setState(() {
      items.add(inputListController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // textfield
            TextField(
              controller: inputListController,
            ),
            // button
            ElevatedButton(
                onPressed: () {
                  tambahData();
                },
                child: const Text('input data')),
            // tampilan
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(items[index]),
                  );
                },
                itemCount: items.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
