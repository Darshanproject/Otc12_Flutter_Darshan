import 'package:flutter/material.dart';

class Second_List extends StatefulWidget {
  const Second_List({super.key});

  @override
  State<Second_List> createState() => _Second_ListState();
}

class _Second_ListState extends State<Second_List> {
  final List<String> items=List<String>.generate(10, (index) => 'Items $index');
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(
        itemCount: items.length ,
        itemBuilder:(context, index){
          return ListTile(
            leading: Text("$index"),
            title: Text("Items $index"),
          );
        } ,
    )
    );
  }
}