import 'package:flutter/material.dart';
import 'package:myeapp/Coustom_Widegts/Coustem_TextField.dart';
import 'package:myeapp/Coustom_Widegts/Our_homebutton.dart';
import 'package:myeapp/Coustom_Widegts/Screens_back.dart';
import 'package:myeapp/consts/consts.dart';

class Signing_Screen extends StatefulWidget {
  const Signing_Screen({super.key});

  @override
  State<Signing_Screen> createState() => _Signing_ScreenState();
}

class _Signing_ScreenState extends State<Signing_Screen> {

  bool ischeck =false;
  @override
  Widget build(BuildContext context) {
    return  Back_Screen(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Custom_TextFiled(
                Title: name,
                hinttext: name
              ),
              Custom_TextFiled(
                Title: email,
                hinttext: email,
              ),
              Custom_TextFiled(
                Title: password,
                hinttext: passwordHint,
              ),
              Custom_TextFiled(
                Title: retyrppassword,
                hinttext: retypepassHint,
              ),
              Row(
                children: [
                  Checkbox(value: ischeck , onChanged:(newValue){
                    setState(() {
                      ischeck = newValue!;
                    });
                  } ),
                  "I aggre to all terms and condtions ".text.make()
                ],
              ),
              10.heightBox,
              TextButton(onPressed: (){}, child: "Alredy have an account ?".text.color(redColor).make(  )),
              2.heightBox,
              Our_button(
                Title: signup,
                color: (ischeck == true)?redColor:fontGrey,
                onPress: (){}
              )
            ],
          ).box.white.height(context.screenHeight / 1.5 ).padding(EdgeInsets.all(8.0)).shadowSm.rounded.width(context.screenWidth*.75).make(),
        ),
      )
    );
  }
}