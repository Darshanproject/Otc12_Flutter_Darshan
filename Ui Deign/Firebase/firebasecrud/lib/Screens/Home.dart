import 'package:firebasecrud/Screens/Add.dart';
import 'package:firebasecrud/Screens/List_Students.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: List_Students(),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Firebase Crud"),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Add_Students()));
            }, icon: Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}