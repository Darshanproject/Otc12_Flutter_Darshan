import 'package:flutter/material.dart';
import 'package:myapi/Screens/Home_Page.dart';
import 'package:myapi/Screens/Image.dart';
import 'package:myapi/Screens/List_Showing_Data.dart';
import 'package:myapi/Screens/List_View.dart';
import 'package:myapi/Screens1/Home_Page.dart';
import 'package:myapi/Screens1/Insert.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_Page1(),
    );
  }
}
