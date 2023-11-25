import 'package:flutter/material.dart';
import 'package:myapp1/Screens/form.dart';

class DyList extends StatefulWidget {
  const DyList({super.key});

  @override
  State<DyList> createState() => _DyListState();
}

class _DyListState extends State<DyList> {
  final List<String> items = List.generate(10, (index) => 'Items');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context ,index){
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Details()));
            },
            child: ListTile(
              title: Text("Items $index"),
              leading:Text("$index"),
            ),
          );
        }),
    );
  }
}
