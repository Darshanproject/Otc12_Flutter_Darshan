import 'package:flutter/material.dart';

import 'package:myeapp/consts/consts.dart';

import '../consts/consts.dart';

Widget Our_button({onPress,String? Title}){
  return ElevatedButton(
    // style: ElevatedButton.styleFrom(primary:  Color(MaterialStateColor.redColor)),
    onPressed: (){}, child: Title!.text.make());
}