
import 'package:myeapp/Auth/LoginPages/Login_Screen.dart';
import 'package:myeapp/Auth/LoginPages/Signing_Screen.dart';
import 'package:myeapp/Coustom_Widegts/Applo_Screen.dart';
import 'package:myeapp/consts/colors.dart';
import 'package:myeapp/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //craeting a function overe here
  changeScreen() {
    Future.delayed(Duration(seconds: 3), () {
      //using getx here
      Get.to(() => const Login_Screen ());
    });
  }

  @override
  void initState() {
    changeScreen();
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                icSplashBg,
                width: 300,
              ),
            ),
            20.heightBox,
            Applo(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            5.heightBox,
           
            Spacer(),
            credits.text.white.fontFamily(semibold).make(),
             appversion.text.white.make(),
            30.heightBox,
            //our splash screen is allmost ready here
          ],
        ),
      ),
    );
  }
}
