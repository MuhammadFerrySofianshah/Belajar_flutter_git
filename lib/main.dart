import 'package:belajar_flutter_git/bottom_nav_bar/bottom_nav_bar_page.dart';
import 'package:belajar_flutter_git/list/list-view-sparated/contoh-quran-app/listview-surah/list_surah.dart';
import 'package:belajar_flutter_git/stack/stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() { 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ! Untuk Mengatur tampilan appBar(batrai,jaringan) pada handphone.
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const BottomNavBarPage(),
    );
  }
}


