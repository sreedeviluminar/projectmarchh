import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      body: ListView(
        children:  [

          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(child: Text('LIST OF FOOD ITEMS')),
          ),
          GestureDetector(
            onTap: (){},
            child: const Card(
              color: Colors.red,
              child: ListTile(
                leading: Icon(Icons.apple),
                title: Text("Apple"),
              ),
            ),
          ),
          const ListTile(
            leading:Icon(Icons.star) ,
            title: Text("Banana"),
            subtitle: Text('I love Bananas'),
          ),
          
          const ListTile(
            leading:Icon(Icons.star,color: Colors.blue,) ,
            title: Text("Coffe"),
          ),
          ListTile(
            leading:Icon(Icons.star) ,
            title: Text("Donut"),
            trailing: Icon(Icons.arrow_downward_rounded),
          ),
          ListTile(
            leading:Icon(Icons.star) ,
            title: Text("Fries"),
          ),
        ],
      ),
    );
  }

}