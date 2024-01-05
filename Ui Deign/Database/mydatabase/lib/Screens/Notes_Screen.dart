import 'package:flutter/material.dart';
import 'package:mydatabase/Models/Note_Model.dart';
import 'package:mydatabase/Screens/Note_Screen.dart';
import 'package:mydatabase/Services/Database_Helper.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Tara yaad Rakhva mata"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
      body: FutureBuilder<List<Note>?>(
        future: DatabaseHelper.getAllNotes(),
        builder: (context ,AsyncSnapshot snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return CircularProgressIndicator();
          }else if(snapshot.hasError){
            return Center(child: Text(snapshot.error.toString()),);
          }else if(snapshot.hasData){
            if (snapshot.data != null) {
              return ListView.builder(itemBuilder: (context,index)=> );
            }
          }
        }),
    );
  }
}