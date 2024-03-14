import 'package:flutter/material.dart';
import 'package:qrproject/Registeration.dart';
import 'package:qrproject/qrcode.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
    Navigator.push(context, MaterialPageRoute(builder:(context)=>const Qr()),
    );
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
