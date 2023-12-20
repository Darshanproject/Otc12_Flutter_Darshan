
import 'package:flutter/material.dart';
import 'package:myeapp/consts/consts.dart';

Widget homebuttons({width, height, String? title, icon, onPress}) {
  return InkWell(
    onTap: () => onPress,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          icon,
          width: 26,
        ),
        10.heightBox,
        title!.text.fontFamily(semibold).color(darkFontGrey).make()
      ],
    ).box.rounded.white.size(width, height).shadowSm.make(),
  );
}
