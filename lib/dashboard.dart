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

  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.place))],
      ),
      drawer: Drawer(
        child: ListView(
          //padding: EdgeInsets.zero,
          children: [

            // DrawerHeader(
            //   decoration: BoxDecoration(color: Colors.blue),
            //   child: Text('Drawer Header'),
            // ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(),
                    ));
              },
              title: Text("Menu One"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_back_ios),
            ),
            ListTile(
              onTap: (){
                print("I am menu one");
                Navigator.pop(context);
              },
              title: Text("Menu two"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_back_ios),
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              title: Text("Menu two"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_back_ios),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex, //add this
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
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      body: pages[selectedIndex],
    );
  }
}
