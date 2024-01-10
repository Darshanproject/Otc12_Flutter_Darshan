import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
Map? mapresponse;
String? stringresponse;
Map? dataresponse;
List? listresponse;
class List_view extends StatefulWidget {
  const List_view({super.key});

  @override
  State<List_view> createState() => _List_viewState();
}

class _List_viewState extends State<List_view> {
  Future FetchList ()async {
    http.Response response;
    response = await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
    if (response.statusCode == 200) {
       stringresponse = response.body;
       mapresponse = json.decode(stringresponse.toString());
       listresponse = mapresponse!['data'];
    }else{
      return showDialog(context: context, builder: (BuildContext){
        return AlertDialog(
          content: Text("Data Not Found"),
        );
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: listresponse!.length ,
          itemBuilder: (context, index){
          return ListTile(
            leading: Text(mapresponse!['id'].toString()),
          );
        },
         
        ),
      ),
    );
  }
}
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:myapi/Screens/Update_Screen.dart';

// class ListViewExample extends StatefulWidget {
//   const ListViewExample({Key? key}) : super(key: key);

//   @override
//   State<ListViewExample> createState() => _ListViewExampleState();
// }

// class _ListViewExampleState extends State<ListViewExample> {
//   List? listResponse;

//   Future<void> fetchList() async {
//     http.Response response;
//     response = await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
//     if (response.statusCode == 200) {
//       final stringResponse = response.body;
//       final mapResponse = json.decode(stringResponse);
//       setState(() {
//         listResponse = mapResponse['data'];
//       });
//     } else {
//       showDialog(
//         context: context,
//         builder: (BuildContext) {
//           return AlertDialog(
//             content: Text("Data Not Found"),
//           );
//         },
//       );
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     fetchList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('List View Example'),
//       ),
//       body: Container(
//         child: listResponse == null
//             ? Center(
//                 child: CircularProgressIndicator(),
//               )
//             : ListView.builder(
//                 itemCount: listResponse!.length,
//                 itemBuilder: (context, index) {
//                   final item = listResponse![index];
//                   return InkWell(
//                     onTap: () {
//                       Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Update_Screen(name: item['first_name'], email: item['email'], image: item['avatar'])));
//                     },
//                     child: ListTile(
//                       trailing: CircleAvatar(
//                         backgroundImage: NetworkImage(item['avatar']),
//                       ),
//                       title: Text(item['first_name'] + ' ' + item['last_name']),
//                       subtitle: Text(item['email']),
//                       leading : Text(item['id'].toString()),
//                     ),
//                   );
//                 },
//               ),
//       ),
//     );
//   }
// }

