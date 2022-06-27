import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridConstruct extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GridConstructState();
}

class GridConstructState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridDemo"),
      ),
      body: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children:const [
          Card(child: Image(image: AssetImage( 'assets/images/friendship.png'))),
          Card(child: Image(image: AssetImage( 'assets/images/friendship.png'))),
          Card(child: Image(image: AssetImage( 'assets/images/friendship.png'))),
          Card(child: Image(image: AssetImage( 'assets/images/friendship.png'))),
          Card(child: Image(image: AssetImage( 'assets/images/friendship.png'))),
          Card(child: Image(image: AssetImage( 'assets/images/friendship.png'))),
          Card(child: Image(image: AssetImage( 'assets/images/friendship.png'))),

        ],
      ),
    );
  }
}
