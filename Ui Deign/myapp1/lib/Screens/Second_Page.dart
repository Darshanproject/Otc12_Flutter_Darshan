import 'package:flutter/material.dart';
import 'package:myapp1/Screens/task1.dart';

class Secon_Page extends StatefulWidget {
  const Secon_Page({super.key});

  @override
  State<Secon_Page> createState() => _Secon_PageState();
}

class _Secon_PageState extends State<Secon_Page> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.purple,Colors.red,Colors.green,Colors.orange,Colors.pink],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          )
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24)
            ),
            height: 250,
            width: 250,
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    labelText: "Id",
                    hintText: "Id"
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                 TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    labelText: "Password",
                    hintText: "Password",
                    prefixIcon: Icon(Icons.remove_red_eye)
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 24,
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Task()));
                }, child: Text("Login"),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}