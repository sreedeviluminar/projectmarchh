import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BottomNavBar(),
  ));
}

class BottomNavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BottomNavBarState();
}

class BottomNavBarState extends State {
  int selected_index = 0;

  List pages = const <Widget>[
    Icon(Icons.home, size: 200),
    Icon(Icons.settings, size: 200),
    Icon(Icons.chat, size: 200),
    Icon(Icons.call, size: 200),

  ];

  void onItemTap(int index) {
    //userdefined function
    setState(() {
      //builtin functio
      selected_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Bar"),
      ),

      body: Center(child: pages.elementAt(selected_index)),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor:  Colors.purple,
        backgroundColor: Colors.orange,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",tooltip: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),

        ],
        currentIndex: selected_index, //current index = 0
        onTap: onItemTap, // change item index when we tap on it
      ),
    );
  }
}
