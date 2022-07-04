import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
          home: Scaffold(
    appBar: AppBar(
      title: Text('Stack'),
      backgroundColor: Colors.greenAccent[400],
    ), //AppBar
    body: Container(
      width: 500,
      height: 500,
      decoration: BoxDecoration(color: Colors.green),
      child: Stack(
        alignment: Alignment.topRight,
        children: <Widget>[
          Container(
            width: 300,
            height: 300,
            color: Colors.red,
          ), //Container
          Positioned(
            right: 100,
            top: 50,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.black,
            ),
          ), //Container
          Positioned(
            left: 50,
            top: 100,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.purple,
            ),
          ), //Container
        ], //<Widget>[]
      ), //Center
    ),
  ) //Center
          ) //Scaffold
      ); //MaterialApp
}
