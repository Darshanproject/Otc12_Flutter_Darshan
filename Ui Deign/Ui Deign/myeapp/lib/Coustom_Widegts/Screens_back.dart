import 'package:flutter/material.dart';
import 'package:myeapp/consts/consts.dart';

Widget Back_Screen(){
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(imgBackground),fit: BoxFit.cover)
    ),
  );
}