import 'package:flutter/material.dart';
import 'package:qrproject/profile.dart';
class Rol extends StatefulWidget {
  const Rol({super.key});

  @override
  State<Rol> createState() => _RolState();
}

class _RolState extends State<Rol> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child:
              TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(70),borderSide:BorderSide(
                        width: 2, color: Colors.white),),
                    labelText: 'Roll No',
                    labelStyle: TextStyle(
                        color: Colors.amber
                    ),
                    filled: true,
                    fillColor: Colors.black45,
                  )
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>const Profile()),
              );
            }, child:  Text('Done'),style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              foregroundColor: Colors.amber,)),
          ],
        ),
      ) ,
    );
  }
}
