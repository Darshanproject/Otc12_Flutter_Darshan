// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:myapi/Screens/Home_Page.dart';
// import 'package:myapi/Screens1/Insert.dart';
// import 'package:http/http.dart' as http;
// import 'package:path/path.dart';

// class Home_Page1 extends StatefulWidget {
//   const Home_Page1({super.key});

//   @override
//   State<Home_Page1> createState() => _Home_Page1State();
// }

// class _Home_Page1State extends State<Home_Page1> {
//   Future data =Future.delayed(Duration(seconds: 3),(){
//      Future fetch() async{

//     http.Response  response;
//     response =  await http.get(Uri.parse('https://database20810.000webhostapp.com/FlutterCrude/view.php'));
//     if (response.statusCode == 200) {
//         final String stringresponse = response.body;
//         final Map dataresponse = jsonDecode(stringresponse.toString());
//     }else{
//       return null;
//     }
//   }
//   });
 
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     data;
//   }
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(
//         title: Text("Home Screen"),
//         centerTitle: true,
//       ),
//       body: data != null ? FutureBuilder(future: data, builder: (context ,snapshot){
//         List <Widget> children;
//         if (snapshot.hasData) {
//           children =[
//             ListView.builder(itemBuilder: (Context ,index){
//               return ListTile(
//                 title: Text(dataresponse!['name'].toString() + ' ' + dataresponse!['surname'].toString()),
//                 subtitle: Text(dataresponse!['email'].toString()),
//               );
//             })
//           ];
//         }else{
//           Text("Error $snapshot");
//         }
//         return Center(
//           child: Text("Error"),
//         );
//       }
      
//       ):Center(
//         child: CircularProgressIndicator(),
//       ),
//       floatingActionButton: FloatingActionButton(onPressed: (){
//         Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Insert_Screen()));

//       },child: Icon(Icons.add),),
//     );
//   }
// }

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myapi/Screens1/Edit.dart';
import 'package:myapi/Screens1/Insert.dart';

class Home_Page1 extends StatefulWidget {
  const Home_Page1({Key? key}) : super(key: key);

  @override
  State<Home_Page1> createState() => _Home_Page1State();
}

class _Home_Page1State extends State<Home_Page1> {
  late Future<List<Map<String, dynamic>>> data;

  @override
  void initState() {
    super.initState();
    data = fetchData();
  }

  Future<List<Map<String, dynamic>>> fetchData() async {
    final response = await http.get(
        Uri.parse('https://database20810.000webhostapp.com/FlutterCrude/view.php'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      final List<Map<String, dynamic>> dataResponse =
          jsonData.cast<Map<String, dynamic>>();
      return dataResponse;
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        centerTitle: true,
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: data,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text("No data available"));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final item = snapshot.data![index];
                return InkWell(
                  onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Update_Screen(name: item['name'], email: item['email'],id: item['id'],)));
                  },
                  child: ListTile(
                    title: Text(item['name'].toString()),
                    subtitle: Text(item['email'].toString()),
                    leading: Text(item['id'].toString()),
                  ),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Insert_Screen()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


class Update_Screen extends StatelessWidget {
  const Update_Screen({super.key,required this.name,required this.email,required this.id});
  final String name;
  final String email;
  final int id;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(name),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(name),
          Text(email),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20 ,vertical: 5),child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Edit(name: name,  email: email ,id: id)));
              }, child: Text("Edit")),
              TextButton(onPressed: (){}, child: Text("Delete")),
            ],
          ),)
        ],
      ),
    );
  }
}