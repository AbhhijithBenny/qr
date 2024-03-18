import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'home.dart';

class Reg extends StatefulWidget {
  const Reg({super.key});

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  TextEditingController Name = TextEditingController();
  TextEditingController Rollno = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();
  void register() async {
    print(Name.text);
    print(Rollno.text);
    print(Email.text);
    print(Password.text);
    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/register');
    var response = await http.post(uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          'name': Name.text,
          'rollno': Rollno.text,
          'email': Email.text,
          'password': Password.text,
        }));
    print(response.statusCode);
    print(response.body);
    var data=jsonDecode(response.body);
    print(data["message"]);
    if(response.statusCode==200) {
      Navigator.push(context, MaterialPageRoute(builder:(context)=>const Home()),

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
            'Registeration',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
                controller: Name,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70),
                    borderSide: BorderSide(width: 2, color: Colors.white),
                  ),
                  labelText: 'Enter Your Name',
                  labelStyle: TextStyle(color: Colors.amber),
                  filled: true,
                  fillColor: Colors.black45,
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
                controller: Rollno,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70),
                    borderSide: BorderSide(width: 2, color: Colors.white),
                  ),
                  labelText: 'Enter Your Roll No',
                  labelStyle: TextStyle(color: Colors.amber),
                  filled: true,
                  fillColor: Colors.black45,
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
                controller: Email,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70),
                    borderSide: BorderSide(width: 2, color: Colors.white),
                  ),
                  labelText: 'Enter Your Email',
                  labelStyle: TextStyle(color: Colors.amber),
                  filled: true,
                  fillColor: Colors.black45,
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
                controller: Password,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70),
                    borderSide: BorderSide(width: 2, color: Colors.white),
                  ),
                  labelText: 'Enter Your Password',
                  labelStyle: TextStyle(color: Colors.amber),
                  filled: true,
                  fillColor: Colors.black45,
                )),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 120,
            child: ElevatedButton(
              onPressed: () {
                register();
              },
              child: Text('Register'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder()),
            ),
          ),
        ],
      ),
    );
  }
}
