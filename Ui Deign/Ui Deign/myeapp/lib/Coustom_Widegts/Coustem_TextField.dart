import 'package:flutter/material.dart';
import 'package:myeapp/consts/consts.dart';

Widget Custom_TextFiled({String? Title,controller,String? hinttext}){
  return Column(
    children: [
      Title!.text.color(redColor).fontFamily(semibold).size(16).makeCentered(),
      5.heightBox,
      TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: redColor)
          ),
          hintText: hinttext,
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          
        ),
      ),
      15.heightBox,
    ],
  );
}