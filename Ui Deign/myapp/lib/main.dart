import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First App"),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Text("data",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}