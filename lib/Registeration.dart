import 'package:flutter/material.dart';
class Reg extends StatefulWidget {
  const Reg({super.key});

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
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
        child:
        TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(70),borderSide:BorderSide(
                  width: 2, color: Colors.white),),
              labelText: 'Enter Your Name',
              labelStyle: TextStyle(
                  color: Colors.amber
              ),
              filled: true,
              fillColor: Colors.black45,
            )
        ),
      ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
       child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(70),borderSide:BorderSide(
                  width: 2, color: Colors.white),),
              labelText: 'Enter Your Roll No',
              labelStyle: TextStyle(
                  color: Colors.amber
              ),
              filled: true,
              fillColor: Colors.black45,
            )
        ),
      ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(70),borderSide:BorderSide(
                      width: 2, color: Colors.white),),
                  labelText: 'Enter Your Email',
                  labelStyle: TextStyle(
                      color: Colors.amber
                  ),
                  filled: true,
                  fillColor: Colors.black45,
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(70),borderSide:BorderSide(
                      width: 2, color: Colors.white),),
                  labelText: 'Enter Your Password',
                  labelStyle: TextStyle(
                      color: Colors.amber
                  ),
                  filled: true,
                  fillColor: Colors.black45,
                )
            ),
          ),
          SizedBox(height:30 ,),
          SizedBox(
            width: 120,
            child: ElevatedButton(onPressed: (){}, child:  Text('Register'),style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder()



            ),
            ),
          ),

    ],
    ),
    );
  }
}
