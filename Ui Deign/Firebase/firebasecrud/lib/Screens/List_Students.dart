import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class List_Students extends StatefulWidget {
  const List_Students({super.key});

  @override
  State<List_Students> createState() => _List_StudentsState();
}

class _List_StudentsState extends State<List_Students> {
  final Stream<QuerySnapshot> studentsStream = FirebaseFirestore.instance.collection('Students').snapshots();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          InkWell(
            onTap: (){},
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        child: CircleAvatar(
                    minRadius: 25,
                  ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Viaml"),
                  Text("Bhayana"),
                  Text("vimal@gmail.com")
                          ],
                        ),
                      )
                    ],
                  ),
                  
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}