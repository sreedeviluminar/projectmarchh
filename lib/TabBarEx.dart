import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'GridDemo.dart';
import 'ListView2.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    debugShowCheckedModeBanner: false,
    home: TabDemo(),
  ));
}

class TabDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TabDemoState();
}

class TabDemoState extends State {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("WhatsApp"),
            bottom: const TabBar(
              tabs: [
                Icon(Icons.camera),
                Text(
                  "CHATS",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "STATUS",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "CALL",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                  child: ElevatedButton(
                      child: Text('goto cam'),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('go to cam'),
                            action: SnackBarAction(
                              label: 'Yay!!!',
                              onPressed: () {},
                            ),
                          ),
                        );
                      })),
              Center(child: Text("Chat")),
              Center(child: Text("Status")),
              Center(child: Text('Call'))
            ],
          ),
        ));
  }
}
