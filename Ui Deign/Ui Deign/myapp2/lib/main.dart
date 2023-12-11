import 'package:flutter/material.dart';
import 'package:myapp2/Screens.dart/Home_Screen.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Bottom_Navigation_Bar(),
    );
  }
}