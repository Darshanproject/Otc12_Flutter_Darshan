import 'package:flutter/material.dart';
import 'package:myeapp/Coustom_Widegts/Coustem_TextField.dart';
import 'package:myeapp/Coustom_Widegts/Home_Button.dart';
import 'package:myeapp/Coustom_Widegts/Our_homebutton.dart';
import 'package:myeapp/Coustom_Widegts/Screens_back.dart';
import 'package:myeapp/consts/consts.dart';
import 'package:myeapp/consts/lists.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  TextEditingController _name = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Back_Screen(
    child: Scaffold(
      body: Center(
        child: Column(
          
          children: [
            
            (context.screenHeight*0.1).heightBox,
            Column(
              children: [
                //  "Loginfromhere".text.size(72).make(),
                Custom_TextFiled(
                  Title: name,
                  controller: _name,
                  hinttext: name,
                ),
                Custom_TextFiled(
                  Title: password,
                  controller: _password,
                  hinttext: password,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: (){},child:forgetpassword.text.make() ),
                ),
                5.heightBox,
                Our_button(
                  Title: login,
                  onPress: (){}
                ),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) => Padding(padding: EdgeInsets.all(8),child: CircleAvatar(radius: 25,backgroundColor: lightGrey,child: Image.asset(socialIconList[index],width: 30,),),)),
                )
              ],
            ).box.white.rounded.shadowSm.padding(EdgeInsets.all(16)).width(context.screenWidth - 70).make(),
          ],
        ),
      ),
    )
    );
  }
}