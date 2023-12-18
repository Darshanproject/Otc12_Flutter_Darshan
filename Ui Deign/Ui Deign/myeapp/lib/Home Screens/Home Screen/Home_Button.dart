import 'package:flutter/material.dart';
import 'package:myeapp/consts/consts.dart';

Widget featuredButton({icon,String? title,height,width}){
  return Column(
    children: [
      10.heightBox,
      Image.asset(icon,width: 60,
      fit: BoxFit.fill,),
      10.heightBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  ).box.white.rounded.margin(EdgeInsets.symmetric(horizontal: 4)).width(width).padding(EdgeInsets.all(5)).height(height).outerShadow.make();
}