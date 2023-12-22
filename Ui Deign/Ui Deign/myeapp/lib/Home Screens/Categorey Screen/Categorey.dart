import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:myeapp/Coustom_Widegts/Screens_back.dart';
import 'package:myeapp/Home%20Screens/Categorey%20Screen/Categore_Details.dart';
import 'package:myeapp/consts/consts.dart';
import 'package:myeapp/consts/lists.dart';

class categories_Scree extends StatelessWidget {
  const categories_Scree({super.key});

  @override
  Widget build(BuildContext context) {
    return Back_Screen(
      child: Scaffold(
        appBar: AppBar(
          title: categories.text.make(),
        ),
        body: Container(
          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            mainAxisExtent: 200,
          ), itemBuilder: (context,index){
            return Column(
              children: [
                Image.asset(categoryList1[index],
                height: 120,
                width: 200,
                fit: BoxFit.cover,
                ),
                10.heightBox,
                "${categoryTitleList[index]}".text.align(TextAlign.center).color(darkFontGrey).make()
              ],
            ).box.clip(Clip.antiAlias).outerShadowSm.make().onTap(() {
              Get.to(Categories_details(title: categoryTitleList[index],));
            });
          }),
        ),
      )
    );
  }
}