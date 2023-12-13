import 'package:flutter/material.dart';
import 'package:myeapp/consts/consts.dart';

Widget homebuttons(){
  return Column(
    children: [
      Image.asset(
        icSplashBg,
        width: 26,
      ),
      10.heightBox,
      login.text.make(),
    ],
  ).box.rounded.white.size(24, 35).shadowSm.make();
}