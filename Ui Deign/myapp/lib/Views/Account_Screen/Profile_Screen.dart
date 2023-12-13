import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:myapp/WidgetsCommon/bg_widget.dart';
import 'package:myapp/consts/consts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(child: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(imgProfile2,width: 130,fit: BoxFit.cover,).box.roundedFull.make()
                ],
              )
            ],
          ),
        )),
      )
    );
  }
}
