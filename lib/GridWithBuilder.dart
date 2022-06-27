import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridBuilder extends StatelessWidget{

 List products = List.generate(50, (index) => "Product $index" );
  List images =[
    'assets/images/friendship.png',
    'assets/images/paintbucket.png',
    'assets/images/teddy.jpg',
    'assets/images/friendship.png',
    'assets/images/paintbucket.png',
    'assets/images/teddy.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (BuildContext obj,index){
            return Card(
             child: Center(child: Text(products[index])),
            );
          }),
    );

  }

}