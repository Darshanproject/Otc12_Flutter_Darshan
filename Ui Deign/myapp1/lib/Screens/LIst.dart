import 'package:flutter/material.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  List mytext=<String>[
    "Harsh","Vimal","Dhaval","Ronak","Dhruvi","Darshan","jay","Jigar","Smit"
  ];
  List mytech=<String>[
    "Student","Student","Student","Student","Student","Flutter Trainner","Trainner of React","Trainer of Python","Hardware and networking Supporter"
  ];
  List mycolor=<dynamic>[Colors.red,Colors.amber,Colors.blue,Colors.purple,Colors.green,Colors.cyan,Colors.orange,Colors.pink,Colors.lightBlue];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(
        itemCount: mytext.length,
        itemBuilder: (context , int index){
          return InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Details_Screen(mytext: mytext[index].toString(), mytech: mytech[index].toString(),mycolor: mycolor[index],))),
            child: ListTile(
              
              title: Text(mytext[index].toString()),
              // subtitle: ,
              leading:Icon(Icons.home),
              iconColor: (index%2==0)?Colors.red:Colors.amber,
            ),
          );
      }),
    );
  }
}


class Details_Screen extends StatelessWidget {
  Details_Screen({super.key, required this.mytext,required this.mytech,required this.mycolor});
  String mytech;
  String mytext;
  final Color mycolor;
  @override
  
  
  Widget build(BuildContext context) {
    
    return  Card(
      margin: EdgeInsets.all(15),
      color: mycolor,
      child:ListTile(
          title: Text("$mytext"),
          subtitle: Text("$mytech"),
      ),
    );
  }
}