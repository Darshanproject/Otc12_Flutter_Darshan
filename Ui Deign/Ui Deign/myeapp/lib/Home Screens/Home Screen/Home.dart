import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myeapp/Controller/Home_Controller.dart';
import 'package:myeapp/Home%20Screens/Account%20Screen/Account_Screen.dart';
import 'package:myeapp/Home%20Screens/Cart%20Screen/Cart.dart';
import 'package:myeapp/Home%20Screens/Categorey%20Screen/Categorey.dart';
import 'package:myeapp/Home%20Screens/Home%20Screen/HomeScree.dart';
import 'package:myeapp/consts/consts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    
    var controller =Get.put(HomeController());
    var navbarItems=[
      BottomNavigationBarItem(icon: Image.asset(icHome,width: 26,),label: home),
      BottomNavigationBarItem(icon: Image.asset(icCategories,width: 26,),label: categories),
      BottomNavigationBarItem(icon: Image.asset(icCart,width: 26,),label: cart),
      BottomNavigationBarItem(icon: Image.asset(icProfile,width: 26,),label: account),
    ];
    var navBody=[
      Home_Screen(),
      categories_Scree(),
      Cart_Screen(),
      Account_Screen()
    ];
    return  Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(child: navBody.elementAt(controller.currentIndex.value)))
        ],
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        currentIndex: controller.currentIndex.value,
        selectedItemColor: redColor,
        selectedLabelStyle: TextStyle(fontFamily: semibold),
        type: BottomNavigationBarType.fixed,
        backgroundColor: whiteColor,
       items: navbarItems,
       onTap: (value){
        controller.currentIndex.value=value;
       },
       ),)
    );
  }
}