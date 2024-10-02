import 'package:flutter/material.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int indexPage = 0;
  List viewPage = const [
    Text('Home'),
    Text('Contact'),
    Text('Help'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: viewPage.elementAt(indexPage),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          // icon 1
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.home,
              color: Colors.red,
            ),
            label: 'home',
          ),
          // icon 2
          BottomNavigationBarItem(
            icon: Icon(
              Icons.contact_emergency,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.contact_emergency,
              color: Colors.red,
            ),
            label: 'contact',
          ),
          // icon 3
          BottomNavigationBarItem(
            icon: Icon(
              Icons.help,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.help,
              color: Colors.red,
            ),
            label: 'help',
          ),
        ],
        selectedItemColor: Colors.red,
        onTap: (value) {
          setState(() {
            indexPage = value;
          });
        },
        currentIndex: indexPage,
      ),
    );
  }
}
