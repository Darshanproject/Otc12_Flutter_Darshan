import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: SingleChildScrollView(
      child: Container(
        
        padding: EdgeInsets.all(12),
      
        child: Column(
          children: [
            Container(
          margin: EdgeInsets.all(12),      
              // color: Colors.amber,
             decoration:BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.blue
              )
             ) , 
            height: 80,
            ),
            Container(
         

              // color: Colors.amber,
             decoration:BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.blue
              )
             ) , 
            height: 80,
            child: Row(
              children: [
                Container(
                   margin: EdgeInsets.only(bottom: 10,right: 10,left: 10,top: 10),      
                  
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.purple
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 10,right: 10,top: 10),      
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.pink
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.yellow
                  ),
                )
              ],
            ),
            ),
            Container(
          margin: EdgeInsets.all(12),      
              // color: Colors.amber,
             decoration:BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.blue
              )
             ) , 
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.purple
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.pink
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.yellow
                  ),
                )
              ],
            ),
            ),
            Container(
          margin: EdgeInsets.all(12),      
              // color: Colors.amber,
             decoration:BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.blue
              )
             ) , 
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.purple
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.pink
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.yellow
                  ),
                )
              ],
            ),
            ),
            Container(
          margin: EdgeInsets.all(12),      
              // color: Colors.amber,
             decoration:BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.blue
              )
             ) , 
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.purple
                  ),
                ),
                Text("A"),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.pink
                  ),
                ),
                Text("A"),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.yellow
                  ),
                )
              ],
            ),
            ),
            Container(
          margin: EdgeInsets.all(12),      
              // color: Colors.amber,
             decoration:BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.blue
              )
             ) , 
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("B"),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.purple
                  ),
                ),
                Text("B"),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.pink
                  ),
                ),
                Text("B"),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.yellow
                  ),
                ),
                Text("B"),
              ],
            ),
            ),
            Container(
          margin: EdgeInsets.all(12),      
              // color: Colors.amber,
             decoration:BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.blue
              )
             ) , 
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("C"),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.purple
                  ),
                ),
                Text("C + C"),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.pink
                  ),
                ),
                Text("C + C"),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.yellow
                  ),
                ),
                Text("C"),
              ],
            ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}