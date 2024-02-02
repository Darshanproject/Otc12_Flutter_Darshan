  import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myeapp/Auth/LoginPages/Signing_Screen.dart';
import 'package:myeapp/Controller/AuthController.dart';
import 'package:myeapp/Coustom_Widegts/Coustem_TextField.dart';
import 'package:myeapp/Coustom_Widegts/Our_homebutton.dart';
import 'package:myeapp/Coustom_Widegts/Screens_back.dart';
import 'package:myeapp/Home%20Screens/Account%20Screen/Account_Screen.dart';
import 'package:myeapp/Home%20Screens/Home%20Screen/Home.dart';
import 'package:myeapp/consts/consts.dart';
import 'package:myeapp/consts/lists.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  // bool isloading = false;
  TextEditingController _name = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AuthController());
    return  Back_Screen(
    child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(   
          children: [
            (context.screenHeight*0.2).heightBox,
            Obx(() => Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //  "Loginfromhere".text.size(72).make(),
                Custom_TextFiled(
                  Title: name,
                  controller: _name,
                  hinttext: name,
                ),
                Custom_TextFiled(
                  Title: password, 
                  controller: _password,
                  hinttext: password,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: (){},child:forgetpassword.text.make() ),
                ),
                5.heightBox,
               controller.isloading.value?CircularProgressIndicator(): Our_button(
                  Title: login,
                  color: lightGrey,
                  onPress: ()async{
                    controller.isloading(true);
                    await controller.LoginMethod(context: context).then((value) {
                       if(value != null){
                          VxToast.show(context, msg: login);
                          Get.offAll(()=>Home());
                    }else{
                      controller.isloading(false);
                    }
                    }
                    );
                  }).box.width(context.screenWidth - 40).make(),
                   Our_button(
                  Title: signup,
                  color: redColor,
                  onPress: ()=>Get.to(Signing_Screen())
                ).box.width(context.screenWidth - 40).make(),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) => Padding(padding: EdgeInsets.all(8),child: CircleAvatar(radius: 25,backgroundColor: lightGrey,child: Image.asset(socialIconList[index],width: 30,),),)),
                )
                  ]
                ),
           )   ],
            )
            )
            ).box.white.rounded.shadowSm.padding(EdgeInsets.all(16)).height(context.screenHeight / 2).width(context.screenWidth - 70).make()
        );
  }
}