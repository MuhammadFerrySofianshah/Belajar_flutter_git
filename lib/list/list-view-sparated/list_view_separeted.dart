//? Penjelasan Tentang ListView.separated.
// Deskripsi : Membuat list dengan pemisah di antara item, seperti divider atau widget lainnya.
// Kapan digunakan : Ketika kamu ingin menampilkan list dengan pemisah yang konsisten di antara item, seperti garis.
import 'package:flutter/material.dart';

class ListViewSeparated extends StatefulWidget {
  const ListViewSeparated({super.key});

  @override
  State<ListViewSeparated> createState() => _ListViewSparateedState();
}

class _ListViewSparateedState extends State<ListViewSeparated> {
  List<Widget> listData = [
    Container(
      height: 100,
      color: Colors.black,
    ),
    Container(
      height: 100,
      color: Colors.pink,
    ),
    Container(
      height: 100,
      color: Colors.red,
    ),
    Container(
      height: 100,
      color: Colors.yellow,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ListView Separator'),
      ),
      body: SafeArea(
          child: Expanded(
        child: ListView.separated(
          itemCount: listData.length,
          itemBuilder: (context, index) => ListTile(
            title: listData[index],
          ),
          separatorBuilder: (BuildContext context, int index) => Divider(),
        ),
      )),
    );
  }
}
