import 'package:flutter/material.dart';
import 'package:mydatabase/Screens/Notes_Screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.amber
        )
      ),
      home: NotesScreen(),
    );
  }
}