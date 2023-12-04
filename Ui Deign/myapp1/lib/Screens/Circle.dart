import 'dart:io';

import 'package:flutter/material.dart';

class Circle extends StatefulWidget {
  const Circle({super.key});

  @override
  State<Circle> createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        margin: EdgeInsets.all(50),
        child: Column(
          children: [
            CircleAvatar(
              maxRadius: 80,
              backgroundImage: NetworkImage("https://images.unsplash.com/photo-1516979187457-637abb4f9353?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHN0YWNrfGVufDB8fDB8fHww"),
            ),
            SizedBox(height: 25,),
            Container(
              height: 250,
              width: 450,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1516979187457-637abb4f9353?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHN0YWNrfGVufDB8fDB8fHww",),),
                shape: BoxShape.circle
              ),
              
            ),
            SizedBox(height: 50,),
            Container(
              child: Image.asset("images/download1.jpeg")),
            
          ],
        ),
      ),
    );
  }
}