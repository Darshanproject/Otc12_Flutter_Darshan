import 'package:flutter/material.dart';
import 'package:navigationapp/Screen/Navigation_Drawer.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
static const apptitle = "My List";
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Navigation_Draw(title: apptitle),
    );
  }
}