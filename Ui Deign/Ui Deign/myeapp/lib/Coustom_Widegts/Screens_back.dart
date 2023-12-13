import 'package:flutter/material.dart';
import 'package:myeapp/consts/consts.dart';

Widget Back_Screen({Widget? child}){
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(imgBackground),fit: BoxFit.cover)
    ),
    child: child,
  );
}