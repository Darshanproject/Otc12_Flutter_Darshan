import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myapi/Screens/List_Showing_Data.dart';
class Insert_Screen extends StatefulWidget {
  const Insert_Screen({super.key});

  @override
  State<Insert_Screen> createState() => _Insert_ScreenState();
}

class _Insert_ScreenState extends State<Insert_Screen> {
  bool choice = true;
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController surname = TextEditingController();
  Future <void> insertdata() async{
    http.Response response;
    response = await http.post(Uri.parse('https://database20810.000webhostapp.com/FlutterCrude/insert.php'),
    body: {'name':name.text,'surname':surname.text,'email':email.text}
    );
    if (response.statusCode == 200) {
        AlertDialog(
          content: Text("Your data has been sended"),
        );
    }else{
      AlertDialog(
        content: Text("There is some error"),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),
        child: Column(
          children: [
              TextField(
                controller: name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Name",
                  labelText:"Name" 
                ),
              ),
              SizedBox(
                height: 30,
              ),
                            TextField(
                controller: surname,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Surname",
                  labelText:"Surname" 
                ),
              ),
              SizedBox(
                height: 30,
              ),

                            TextField(
                controller: email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Example@gmail.com",
                  labelText:"Example@gmail.com" 
                ),
              ),
              SizedBox(
                height: 30,
              ),

                            TextField(
                              obscureText: choice,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Password",
                  labelText:"Password" ,
                  suffixIcon: choice == true ? IconButton(onPressed: (){
                    setState(() {
                      choice = false;
                    });
                  }, icon: Icon(Icons.visibility)):IconButton(onPressed: (){
                    setState(() {
                      choice = true;
                    });
                  }, icon: Icon(Icons.visibility_off))
                ),
              ),
              Spacer(),
              SizedBox(
                width:  MediaQuery.of(context).size.width - 40,
                child: ElevatedButton(onPressed: ()async {
                await  insertdata();
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>MyListShowing()));
                },child: Text("Send Data"),),
              )
          ],
        ),
      ),
    );
  }
}