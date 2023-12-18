import 'package:flutter/material.dart';
import 'package:myeapp/Coustom_Widegts/Our_homebutton.dart';
import 'package:myeapp/Coustom_Widegts/Screens_back.dart';
import 'package:myeapp/consts/consts.dart';
import 'package:myeapp/consts/images.dart';
import 'package:myeapp/consts/lists.dart';

class Account_Screen extends StatefulWidget {
  const Account_Screen({super.key});

  @override
  State<Account_Screen> createState() => _Account_ScreenState();
}

class _Account_ScreenState extends State<Account_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Back_Screen(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              // 2.heightBox,
              Align(
              
                alignment: Alignment.topRight,
                child: IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: whiteColor,)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                alignment: Alignment.topLeft,
                child: Image.asset(imgProfile2),
              ).box.width(context.screenWidth/5).roundedFull.clip(Clip.antiAlias).make(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  credits.text.white.size(18).make(),
                  "gadadarshan.tops@gmail.com".text.white.size(12).make()
                ],
              ),
              
              65.widthBox,
              OutlinedButton(
                style: ButtonStyle(
                  side: MaterialStatePropertyAll(
                    BorderSide(
                      color: whiteColor
                    )
                  )
                ),
                onPressed: (){}, child: "logout".text.white.make())
                ],
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context ,index){
                return ListTile(
                  title: MyprofileList[index].text.color(darkFontGrey).fontFamily(bold).make(),
                  leading: Image.asset(MyprofilePicList[index],height: 20,width: 20,),
                );
              }
              , separatorBuilder: (context, index) {
                return Divider(
                  color: darkFontGrey,
                );
              }, itemCount:MyprofileList.length ).box.padding(EdgeInsets.symmetric(horizontal: 16)).margin(EdgeInsets.all(12)).rounded.white.make().box.color(redColor).make()
            ],
          ),
        ),
      )
    );
  }
}