import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myapi/Screens1/Home_Page.dart';
class Edit extends StatefulWidget {
   Edit({super.key,required this.name ,required this.email,required this.id});
 final  String name;
  final String email;
  final int?  id;
 

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  late  TextEditingController? cname;
  late TextEditingController? cemail;
   void editdata(){
  var url = 'https://database20810.000webhostapp.com/FlutterCrude/update.php';
  http.post(Uri.parse(url),body: {
    'id': id,
    'name':cname?.text.toString(),
    'email':cemail?.text.toString()
  });
 }
  @override
  void initState() {
    
    // TODO: implement initState
    cname = TextEditingController(text:widget.name);
    cemail = TextEditingController(text: widget.email);
    super.initState();
   
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Edit Screen"),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                  controller: cname,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),
              ),
              TextField(
                  controller: cemail,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),
              ),
              Spacer(),
              SizedBox(
                child: ElevatedButton(onPressed: ()async{
                  await 
                  Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>Home_Page1()));
                  editdata();
                }, child: Text("Edit Data")),
              )
            ],
          ),
        ),
      ),
    );
  }
  
}