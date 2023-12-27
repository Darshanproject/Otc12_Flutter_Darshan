import 'package:flutter/material.dart';

class Navigation_Draw extends StatefulWidget {

  const Navigation_Draw({super.key,required this.title});
  final String title;
  @override
  State<Navigation_Draw> createState() => _Navigation_DrawState();
}

class _Navigation_DrawState extends State<Navigation_Draw> {
  int _Selectedindex=0;
  static const TextStyle optionStyle=TextStyle(
    fontSize: 24,fontWeight: FontWeight.bold
  );
  static const List<Widget> _mylist = <Widget>[
    Text("Suraj",style: optionStyle,),
    Text("Chetan",style: optionStyle,),
    Text("Vimal",style: optionStyle,),
  ];
  void onClick(int index){
    setState(() {
      _Selectedindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body: Center(
        child: _mylist[_Selectedindex],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child:Container(
                decoration: BoxDecoration(
                  color: Colors.blue
                ),
              ) 
              ),
            ListTile(
              title: const Text('Home'),
              selected: _Selectedindex == 0,
              onTap: () {
                onClick(0);
                Navigator.pop(context);
              },
            ),
                        ListTile(
              title: const Text('Gallery'),
              selected: _Selectedindex == 1,
              onTap: () {
                onClick(1);
                Navigator.pop(context);
              },
            ),
                        ListTile(
              title: const Text('Video'),
              selected: _Selectedindex == 2,
              onTap: () {
                onClick(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}