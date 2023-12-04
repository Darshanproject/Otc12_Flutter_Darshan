import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:getmyapp/const/Color.dart';
import 'package:getmyapp/const/String.dart';
import 'package:velocity_x/velocity_x.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(

          child: Column(
            children: [
              Container(
               
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextField(
                      
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24)
                        ),
                        label: name1.text.make(),
                      ),
                    ),
                    SizedBox(height: 25,),
                                        TextField(
                      
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24)
                        ),
                        label: name1.text.make(),
                      ),
                    ),
                    SizedBox(height: 25,),
                    ElevatedButton(onPressed: (){},style: ButtonStyle(backgroundColor:  MaterialStatePropertyAll(Colors.green)), child: "Login".text.make(),),
                     SizedBox(height: 25,),
                     TextButton(onPressed: (){}, child: "Already have an accout ".text.fontWeight(FontWeight.bold).make()),
                      TextButton(onPressed: (){}, child: "Forgot Password".text.make()),
                  ],
                ),
              ).box.padding(EdgeInsets.symmetric(horizontal: 10,vertical: 10)).rounded.border(width: 2).makeCentered()
            ],
          ),
        ).box.padding(EdgeInsets.symmetric(horizontal: 24,vertical: 250)).make(),
    );
  }
}