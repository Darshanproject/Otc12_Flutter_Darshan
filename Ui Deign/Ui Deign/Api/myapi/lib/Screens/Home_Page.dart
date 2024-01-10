import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


String? stringresponse;
Map? mapresponse;
Map? dataresponse;
List? listresponse;
class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  Future FetchingApi() async {
      http.Response response;
      response = await http.get(Uri.parse('https://reqres.in/api/users?page=2')) ;   
      if(response.statusCode == 200 ){
        stringresponse = response.body;
        mapresponse = json.decode(stringresponse.toString());
        listresponse = mapresponse!["data"];
      }else{
        print("name");
      }
  }
  @override
  void initState() {
    FetchingApi();
    super.initState();
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Api"),
        centerTitle: true,
      ),
      body: Center(
        child:  Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.amber
          ),
          // child:  dataresponse == null ? CircularProgressIndicator():Text(dataresponse!['first_name'].toString())
          child: Text(listresponse![0].toString()),
        ),
      ),
    );
  }
}