import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:qrproject/Registeration.dart';
import 'package:qrproject/qrcode.dart';
import 'package:http/http.dart' as http;


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();

}

class _HomeState extends State<Home> {
  TextEditingController Username = TextEditingController();
  TextEditingController Password = TextEditingController();
  Future<void> login()async{

  Uri url=Uri.parse('https://scnner-web.onrender.com/api/login');

  var response= await http.post(url,
  headers: <String, String>{
      'Content-Type':'application/json ; charset=UTF-8',
      },
      body:jsonEncode({'rollno':Username.text,'password':Password.text}));
  var data = jsonDecode((response.body));
  if(response.statusCode==200) {
    Navigator.push(context, MaterialPageRoute(builder:(context)=>const Qr()),

    );
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data["message"])));
  }else{
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data["message"])));
  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Login',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
             child: TextField(
               controller: Username,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(70),borderSide:BorderSide(
                    width: 2, color: Colors.white),),
                labelText: 'Username',
                  labelStyle: TextStyle(
                    color: Colors.amber),
                filled: true,
                fillColor: Colors.black45,

            ),
          )),
            SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child:
            TextField(
                controller: Password,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(70),borderSide:BorderSide(
                      width: 2, color: Colors.white),),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: Colors.amber
                  ),
                  filled: true,
                  fillColor: Colors.black45,
                )
            ),
          ),
          SizedBox(height:30 ,),

          SizedBox(height: 20,),
    ElevatedButton(onPressed: (){
      login();
    }, child:  Text('login'),style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blueAccent,
    foregroundColor: Colors.amber,)),
          SizedBox(height: 20,),
          Text("OR"),
          SizedBox(height: 20,),
          SizedBox(
            width: 300,
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>const Reg()),
              );
            }, child:  Text('Dont Have An Account'),style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.amber,
                shape: RoundedRectangleBorder()



            ),
            ),
          ),

        ],
      ),
    );
  }
}
