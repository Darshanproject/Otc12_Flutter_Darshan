import 'package:flutter/material.dart';

import 'package:myeapp/consts/consts.dart';

import '../consts/consts.dart';

Widget Our_button({onPress,String? Title,color}){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(primary: color,padding: EdgeInsets.all(12),),
    onPressed: onPress, child: Title!.text.make());
}