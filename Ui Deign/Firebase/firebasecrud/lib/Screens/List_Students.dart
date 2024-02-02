




import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebasecrud/Screens/Upadte%20_screen.dart';
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

  //Deleting
  CollectionReference students = FirebaseFirestore.instance.collection('Students');
  Future<void>Delete(id){
    return students.doc(id).delete().then((value) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data Deleted Successfully"),backgroundColor: Colors.green,))
    ).catchError((error)=>ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("This is your error $error"),backgroundColor: Colors.red,)));
  }
  @override
  Widget build(BuildContext context) {
    List <Widget> children;
    return  StreamBuilder<QuerySnapshot>(stream: studentsStream, builder: (BuildContext context,AsyncSnapshot<QuerySnapshot> snapshot){
      if (snapshot.hasError) {
        return Text("Something Went wrong $snapshot");
      }
      if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
      }
      final List storedoc = [];
      snapshot.data!.docs.map((DocumentSnapshot document)  {
        Map a = document.data() as Map<String,dynamic>;storedoc.add(a);
        a['id'] = document.id;
      }).toList();
      return ListView.builder(
        itemCount: snapshot.data!.size,
        itemBuilder: (context ,index){
            return InkWell(
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(storedoc[index]['name'].toString() + ' '+ storedoc[index]['surname'].toString()),
                            Text(storedoc[index]['email'].toString()),
                            Text(storedoc[index]['id'].toString()),
                            Text(storedoc[index]['password'].toString())
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          IconButton(onPressed: ()=>{
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>UpdateStudentPage(id:storedoc[index]['id'],name: storedoc[index]['name'],surname: storedoc[index]['surname'],email: storedoc[index]['email'],password: storedoc[index]['password'], )))
                          }, icon: Icon(Icons.edit)),
                    IconButton(onPressed: ()=>{Delete(storedoc[index]['id'])}, icon: Icon(Icons.delete))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
      });
    });
  }
}