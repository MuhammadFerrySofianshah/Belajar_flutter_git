import 'package:flutter/material.dart';
// ! Ringkasan:
/* 
- alignment mengatur posisi widget di dalam Stack.
- clipBehavior mengontrol apakah konten di luar batas Stack dipotong.
- fit menentukan bagaimana widget di dalam Stack akan menempati ruang.
- key memberikan identitas unik pada widget.
- textDirection mengatur arah penulisan teks untuk AlignmentDirectional.
*/

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Aligment'),
          Stack(
            alignment:
                Alignment.center, // Menempatkan elemen-elemen di tengah Stack
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
            ],
          ),
          Text('Clip'),
          Stack(
            clipBehavior:
                Clip.hardEdge, // Memotong bagian yang keluar dari batas Stack
            children: [
              Positioned(
                top: -20,
                left: -20,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          Text('Fit'),
          Stack(
            fit: StackFit.expand, // Memaksa semua child memenuhi ukuran Stack
            children: [
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.red.withOpacity(0.5),
              ),
            ],
          ),
          Text('Key'),
          Stack(
            key: UniqueKey(), // Memberikan identitas unik untuk Stack
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ],
          ),
          Text('Text Direction'),
          Stack(
            alignment: AlignmentDirectional
                .centerStart, // Menggunakan AlignmentDirectional
            textDirection:
                TextDirection.rtl, // Mengubah arah teks dari kanan ke kiri
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
            ],
          )
        ],
      ),
    );
  }
}
