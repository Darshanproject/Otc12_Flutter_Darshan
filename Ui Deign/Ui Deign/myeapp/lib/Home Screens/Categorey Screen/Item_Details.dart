import 'package:flutter/material.dart';
import 'package:myeapp/consts/colors.dart';
import 'package:myeapp/consts/consts.dart';
import 'package:myeapp/consts/lists.dart';

class Items_Detail extends StatelessWidget {
  final String title;
  Items_Detail({Key? key,required this.title}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.share),color: darkFontGrey,),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_rounded))
        ],
        title: title.text.fontFamily(semibold).make(),
      ),
      body: Column( 
        children: [
          Expanded(child: Container(
            child:SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ 
                     VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          imgFc5,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        );
                      }),
                    10.heightBox,
                    title.text.size(16).fontFamily(bold).make(),
                ],
              ),
            ) ,
          ))
        ],
      ),
    );
  }
}