import 'package:flutter/material.dart';

class Update_Screen extends StatelessWidget {
  final String name;
  final String email;
  final String image;
  const Update_Screen({super.key,required this.name,required this.email,required this.image});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(name),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(image),
                    minRadius: 34,
                  ),
                ),
                SizedBox(width: 24,),
                Container(
                  child: Column(
                    children: [
                      Text(name,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800),),
                      Text(email,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800),)

                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}