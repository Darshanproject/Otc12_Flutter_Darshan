// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:myapp/Screens/Alert_Diloage.dart';
import 'package:url_launcher/url_launcher.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final String url_ ="https://github.com/Darshanproject/Otc12_Flutter_Darshan";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            child: ElevatedButton(onPressed: (){
Lunch(url_ as Uri);
            },child: Text("Open Corme"),),
          ),
        ),
      )
    );
  }
}
void Lunch(Uri url_) async {
  
  if(await  launchUrl(url_,mode: LaunchMode.externalApplication) ){
    await launchUrl(url_);
  }else{
    throw 'Coudnot lunch your chorme $url_';
  }
}
class Alert_Box extends StatelessWidget {
  const Alert_Box({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextButton(onPressed: ()=>showDialog(context: context, builder: (BuildContext context)=>
    AlertDialog(
      title: Text("Are you Sure"),
      content: Text("Do you want to do this ?"),
      actions: [
        TextButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>MyApp()));
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Succefully Delted")));
        }, child: Text("Yes")),
        TextButton(onPressed: (){}, child: Text("NO")),
      ],
    )
    ),child: Text("Yes"),);
  }
}