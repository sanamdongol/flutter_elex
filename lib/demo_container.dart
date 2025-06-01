import 'package:flutter/material.dart';

class DemoContainer extends StatefulWidget {
  const DemoContainer({super.key});

  @override
  State<DemoContainer> createState() => _DemoContainerState();
}

class _DemoContainerState extends State<DemoContainer> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Title"),
      ),
      drawer: Drawer(child: Column(children: [Text('hello')],),),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            height: 300,
            width: 300,
            child: Text("Container Button"),
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black, width: 10),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
