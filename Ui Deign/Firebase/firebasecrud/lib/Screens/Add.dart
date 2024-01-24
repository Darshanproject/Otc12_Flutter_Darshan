import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebasecrud/Screens/Home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Add_Students extends StatefulWidget {
  const Add_Students({super.key});

  @override
  
  State<Add_Students> createState() => _Add_StudentsState();
}

class _Add_StudentsState extends State<Add_Students> {

  var namesend = '';
  var emailsend = '';
  var passsend = '';
  var surnamesend = '';
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController pass = TextEditingController();
  final _fromkey = GlobalKey<FormState>();
  CollectionReference students = FirebaseFirestore.instance.collection('Students');
  Future <void> adduser(){
    return students.add({'name':name.text,'email':email.text,'surname':surname.text,'password':pass.text})
    .then((value) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data Added Successfully"),backgroundColor: Colors.amber,)))
    .catchError((error)=>ScaffoldMessenger.of(context).showSnackBar(   SnackBar(content: Text("Failed to Add user $error"))));
  }
  @override
  void dispose(){
    name.dispose();
    email.dispose();
    surname.dispose();
    pass.dispose();
  }
  clearText(){
    name.clear();
    email.clear();
    surname.clear();
    pass.clear();
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Form(
        key: _fromkey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: name,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                      return 'Please enter your name here ';
                  }else{
                    return null;
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Name"
                ),
              ),
              SizedBox(
                height: 10,
              ),
               TextFormField(
                controller: email,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                      return 'Please enter your name here ';
                  }else{
                    return null;
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Name"
                ),
              ),
                            SizedBox(
                height: 10,
              ),
               TextFormField(
                controller: surname,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                      return 'Please enter your name here ';
                  }else{
                    return null;
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Name"
                ),
              ),
                            SizedBox(
                height: 10,
              ),
               TextFormField(
                controller: pass,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                      return 'Please enter your password here ';
                  }else{
                    return null;
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Password"
                ),
              ),
              Spacer(),
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                child: ElevatedButton(onPressed: (){
                  if(_fromkey.currentState!.validate()){
                   setState(() {
                    namesend = name.text;
                    emailsend = email.text;
                    surnamesend = surname.text;
                    passsend = pass.text;
                    adduser();
                    clearText();
                   });
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Home_page()));
                  }
                }, child: Text("Add Data")),
              )
            ],
          ),
        )),
        appBar: AppBar(
          title: Text("Add Data"),
          centerTitle: true,
          backgroundColor: Color(0xFFB39DDB),
        ),
    );
  }
}