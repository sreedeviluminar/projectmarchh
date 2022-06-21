import 'package:flutter/material.dart';

void main() {
  runApp(LauncherScreen());
}

class LauncherScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
        ),
        body: const Center(
          child: Text(
            "My First App",
            style: TextStyle(color: Colors.purple, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
