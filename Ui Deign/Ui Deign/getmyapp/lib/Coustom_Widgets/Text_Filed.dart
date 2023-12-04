import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


Widget CustomTextFiled({String? la_text,String? Hint}){
  return TextField(
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      label: Text(la_text!),
      hintText: "$Hint",
    ),
  );
}