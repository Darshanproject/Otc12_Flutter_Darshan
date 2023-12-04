import 'package:flutter/material.dart';
import 'package:getmyapp/const/Color.dart';

Widget BG_Widegt({Widget? child}){
  return Container(
    decoration: BoxDecoration(
      color: org,
      image: DecorationImage(image: AssetImage("images/google.png"))
    ),
    child: child,
  );
}