import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListWithBuilder extends StatelessWidget{

  List images =[
    'assets/images/friendship.png',
    'assets/images/paintbucket.png',
    'assets/images/teddy.jpg'
  ];
  List names=[
    'Friends',
    'paint',
    'teddy'
  ];
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text('List.Builder'),
       ),
       body: ListView.builder(itemBuilder: (BuildContext,index){
         return Card(
           child: ListTile(
             leading: CircleAvatar(backgroundImage: AssetImage(images[index])),
             title: Text(names[index]),
           ),
         );
       },
         itemCount: images.length,
         scrollDirection: Axis.vertical,
         padding: EdgeInsets.all(10),
       ),
     );
  }

}