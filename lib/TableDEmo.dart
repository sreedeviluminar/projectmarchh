import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyTable()));
}

class MyTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyTable"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const Center(child: Text("Data Table Example",style: TextStyle(fontSize: 20),)),
            Center(
              child: DataTable(
                columnSpacing: 200,

                decoration: BoxDecoration(border: Border.all(),
                  color: Colors.pink
                ),
                columns: const [
                  DataColumn(label: Text("ID")),
                  DataColumn(label: Text("Name")),
                  DataColumn(label: Text("Profession"))
                ],
                rows:const [
                  DataRow(cells: [
                    DataCell(Text("1")),
                    DataCell(Text("Anjali")),
                    DataCell(Text("Doctor")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("1")),
                    DataCell(Text("Anjali")),
                    DataCell(Text("Doctor")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("1")),
                    DataCell(Text("Anjali")),
                    DataCell(Text("Doctor")),
                  ])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
