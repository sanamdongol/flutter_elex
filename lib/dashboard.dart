import 'package:flutter/material.dart';
import 'package:ncit_flutter_project/bottom_nav/cart.dart';
import 'package:ncit_flutter_project/bottom_nav/home.dart';
import 'package:ncit_flutter_project/bottom_nav/lesson.dart';
import 'package:ncit_flutter_project/bottom_nav/proifle.dart';
import 'package:ncit_flutter_project/bottom_nav/settings.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  var pages = [
    HomePage(),
    ProfilePage(),
    SettingsPage(),
    CartPage(),
    LessonPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_max_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.settings),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: Icon(Icons.settings),
          ),
          BottomNavigationBarItem(
            label: 'Lessons',
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: pages[4],
    );
  }
}
