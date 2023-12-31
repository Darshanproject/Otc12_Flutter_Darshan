import 'package:myapp/consts/consts.dart';
import 'package:flutter/material.dart';

Widget cunstomTextField({String? title, String? hint, controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(redColor).fontFamily(semibold).size(16).make(),
      5.heightBox,
      TextFormField(
        controller: controller,
        decoration: InputDecoration(
            hintStyle: TextStyle(
              fontFamily: semibold,
              color: textfieldGrey,
            ),
            hintText: hint,
            isDense: true,
            fillColor: lightGrey,
            filled: true,
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: redColor))),
      ),
      15.heightBox,
    ],
  );
}
