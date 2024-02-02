import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myeapp/Controller/AuthController.dart';
import 'package:myeapp/Coustom_Widegts/Coustem_TextField.dart';
import 'package:myeapp/Coustom_Widegts/Our_homebutton.dart';
import 'package:myeapp/Coustom_Widegts/Screens_back.dart';
import 'package:myeapp/Home%20Screens/Home%20Screen/Home.dart';
import 'package:myeapp/consts/consts.dart';

class Signing_Screen extends StatefulWidget {
  const Signing_Screen({super.key});

  @override
  State<Signing_Screen> createState() => _Signing_ScreenState();
}

class _Signing_ScreenState extends State<Signing_Screen> {
  
  var namecontroller = TextEditingController();
  var emailcontroller = TextEditingController();
  var passcontroller = TextEditingController();
  var retyprpasscontroller = TextEditingController();

  bool ischeck =false;
  @override
  Widget build(BuildContext context) {
  var controller = Get.put(AuthController());  
    return  Back_Screen(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
             Column(
                children: [
                  Custom_TextFiled(
                Title: name,
                controller: namecontroller,
                hinttext: name
              ),
              Custom_TextFiled(
                Title: email,
                controller: emailcontroller,
                hinttext: email,
              ),
              Custom_TextFiled(
                Title: password,
                controller: passcontroller,
                hinttext: passwordHint,
              ),
              Custom_TextFiled(
                Title: retyrppassword,
                controller: retyprpasscontroller,
                hinttext: retypepassHint,
              ),
                ],
              ) ,
              Row(
                children: [
                  Checkbox(value: ischeck , onChanged:(newValue){
                    setState(() {
                      ischeck = newValue!;
                    });
                  } ),
                  "I aggre to all terms and condtions ".text.make()
                ],
              ),
              10.heightBox,
              TextButton(onPressed: (){}, child: "Alredy have an account ?".text.color(redColor).make(  )),
              2.heightBox,
            controller.isloading.value?CircularProgressIndicator():Our_button(
                Title: signup,
                color: (ischeck == true)?redColor:fontGrey,
                onPress: ()async{
                  await controller.siginMethod(
                    context: context,
                    email: emailcontroller.text,
                    password: passcontroller.text
                  ).then((value) {
                    return controller.storeUserData(
                      email: emailcontroller.text,
                      name: namecontroller.text,
                      password: passcontroller.text,
                    );
                  }).then((value) {
                    VxToast.show(context, msg: login);
                    Get.offAll(()=>Home());
                  });
                }
              )
                     ],
          )
          )
        ).box.white.height(context.screenHeight /1.5 ).padding(EdgeInsets.all(8.0)).shadowSm.rounded.width(context.screenWidth*.75).makeCentered()
        
        );
  }
}