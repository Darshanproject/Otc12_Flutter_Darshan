import 'package:flutter/material.dart';
import 'package:getmyapp/Coustom_Widgets/Bg_Screen.dart';
import 'package:getmyapp/Coustom_Widgets/Text_Filed.dart';
import 'package:getmyapp/Coustom_Widgets/home_Button.dart';

class Second_Screen extends StatefulWidget {
  const Second_Screen({super.key});

  @override
  State<Second_Screen> createState() => _Second_ScreenState();
}

class _Second_ScreenState extends State<Second_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BG_Widegt(
        child: 
           Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                  margin: EdgeInsets.symmetric(horizontal: 25,vertical: 65),
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width/1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24)
                  ),
                  child: Column(
                    children: [
                      CustomTextFiled(Hint: "Name" ,la_text:"Name" ),
                      SizedBox(height: 25,),
                      CustomTextFiled(Hint: "Email" ,la_text:"Email" ),
                      SizedBox(height: 25,),
                      homeButton()
                    ],
                  ),
                )
              ],
            ),
            ),
        ),
    );
  }
}