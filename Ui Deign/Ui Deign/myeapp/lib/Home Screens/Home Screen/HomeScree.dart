import 'package:flutter/material.dart';
import 'package:myeapp/Coustom_Widegts/Coustem_TextField.dart';
import 'package:myeapp/Coustom_Widegts/Home_Button.dart';
import 'package:myeapp/Home%20Screens/Home%20Screen/Home_Button.dart';
import 'package:myeapp/consts/colors.dart';
import 'package:myeapp/consts/consts.dart';
import 'package:myeapp/consts/lists.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  TextEditingController search =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: lightGrey,
      padding: EdgeInsets.all(12),
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child:Column(
          children: [
            Container(
              alignment: Alignment.center,
              color: lightGrey,
              height: 60,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                    
                  ),
                  fillColor: lightGrey,
                  suffixIcon:Icon(Icons.search),
                  hintText: "What's in your mind ?" 
                ),
              ),
            ),
            Expanded(child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  ///Swiper starts from here .
                  VxSwiper.builder(
                    aspectRatio: 16/9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount: slidersList.length,
                    itemBuilder: (context, index) {
                      return Image.asset(slidersList[index],fit: BoxFit.fitWidth,);
                    },
                  ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make(),
                  ///Swipers ends here 
                  10.heightBox,

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:List.generate(2, (index) => featuredButton(
                    height:context.screenHeight *0.15,
                    width:context.screenWidth/2.5,
                    icon: index==0?icTodaysDeal:icFlashDeal,
                    title: index==0?todaysdeal:flashsales
                    )),
                  ),
                  ///second Swiper
                   VxSwiper.builder(
                    aspectRatio: 16/9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount: secondSlidersList.length,
                    itemBuilder: (context, index) {
                      return Image.asset(secondSlidersList[index],fit: BoxFit.fitWidth,);
                    },
                  ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make(),
                  ///Second Swipers ends here 
                ],
              ),
            ))
          ],
        ) 
      ),
    );
  }
}