import 'package:flutter/material.dart';
import 'package:getmyapp/const/images.dart';
import 'package:velocity_x/velocity_x.dart';


Widget homeButton(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset("images/google.png",width: 12,),
      "Login".text.color(Colors.red).make()
    ],
  ).box.rounded.red200.size(60, 30).shadowXl.make();
}