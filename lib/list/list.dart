import 'dart:js_interop';

import 'package:flutter/material.dart';

// link tutorial list
// erico: https://youtu.be/QSpSKTcR44s?si=b8iuwYd3dNhXUlMI
class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  // fitur tambah data dan hapus data.
  int counter = 1;
  var listName = <Widget>[];

  void tambahData() {
    setState(() {
      listName.add(Text('Data ke - $counter'));
      counter++;
    });
  }

  void hapusData() {
    setState(() {
      if (listName.isNotEmpty) {
        listName.removeLast();
      counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Data'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                  onPressed: tambahData,
                  icon: const Icon(Icons.add),
                  label: const Text('Tambah Data')),
              ElevatedButton.icon(
                  onPressed: hapusData,
                  icon: const Icon(Icons.delete),
                  label: const Text('Hapus data'))
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listName.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: listName[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
