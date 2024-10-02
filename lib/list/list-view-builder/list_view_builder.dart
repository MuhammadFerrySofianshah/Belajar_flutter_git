// ? Penjelasan ListView.builder
// Deskripsi: Membuat list dinamis, item hanya dirender sesuai kebutuhan.
// Kapan digunakan : List yang sangat panjang atau ketika jumlah item tidak diketahui secara pasti.
/* 
- list mirip dengan set, tetapi jika datanya sama list bisa menginput 3 datanya sedangkan set hanya 1 datanya.
- link tutorial list
- erico: https://youtu.be/QSpSKTcR44s?si=b8iuwYd3dNhXUlMI (membuat fitur tambah data dan hapus data).
 */

import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  // memulai urutan dari angka 1
  int counter = 1;
  // membuat listnya
  var listName = <Widget>[];

  // function untuk menambahkan data
  void tambahData() {
    setState(() {
      listName.add(Text('Data ke - $counter'));
      counter++; 
    });
  }

  // function untuk menghapus data
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
