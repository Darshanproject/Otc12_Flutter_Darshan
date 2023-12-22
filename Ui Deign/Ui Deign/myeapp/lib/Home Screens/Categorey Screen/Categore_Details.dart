import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myeapp/Coustom_Widegts/Screens_back.dart';
import 'package:myeapp/Home%20Screens/Categorey%20Screen/Item_Details.dart';
import 'package:myeapp/consts/consts.dart';

class Categories_details extends StatelessWidget {
  final String title;
 Categories_details({Key? key, required this.title});

  @override
  Widget build(BuildContext context) {
    return  Back_Screen(
      child: Scaffold(
        appBar: AppBar(
          title: title.text.fontFamily(semibold).make(),
        ),
        body: Container(
          child: Column(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(6, (index) => "Baby Clothing".text.size(18).fontFamily(semibold).color(darkFontGrey).makeCentered().box.white.rounded.padding(EdgeInsets.all(5)).margin(EdgeInsets.all(5)).make()),
                ),
              ),
              20.heightBox,
              Expanded(child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                mainAxisExtent: 250,
                ), itemBuilder: (context ,index){
                  return Column(
                    children: [Image.asset(imgP5,height: 150,width: 220,fit: BoxFit.cover,),
                    "This is your cat screen".text.size(18).fontFamily(bold).make(),
                    10.heightBox,
                    "\$6000".text.size(20).semiBold.make()
                    ],
                  ).box.white.roundedSM.outerShadowSm.make().onTap(() {
                    Get.to(Items_Detail(title: title));
                   });
                } ))
            ],
          ),
        ),
      )

    );
  }
}