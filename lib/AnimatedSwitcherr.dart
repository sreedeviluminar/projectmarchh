import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp( MaterialApp(home: DemoAnimatedSwitcher()));

class DemoAnimatedSwitcher extends StatefulWidget {
  @override
  _DemoAnimatedSwitcherState createState() => _DemoAnimatedSwitcherState();
}

class _DemoAnimatedSwitcherState extends State<DemoAnimatedSwitcher> {
  bool switchChild = true;

  @override
  Widget build(BuildContext context) {
    List colors = [
      Colors.red,
      Colors.green,
      Colors.yellow,
      Colors.pink,
      Colors.blue,
      Colors.amber,
      Colors.deepPurple
    ];
    Random random = new Random();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(seconds: 3),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(child: child, scale: animation);
              },
              child: switchChild
                  ? Container(
                key: UniqueKey(),
                height: 90.0,
                width: 90.0,
                color: colors[random.nextInt(colors.length)],
              )
                  : Container(
                key: UniqueKey(),
                height: 140.0,
                width: 140.0,
                color: colors[random.nextInt(colors.length)],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                switchChild = !switchChild;
              });
            },
            child: Text('Click'),
          ),
        ],
      ),
    );
  }
}