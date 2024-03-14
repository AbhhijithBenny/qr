import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image.asset(
        "asset/Benny.jpeg",height:400,width: 300,),
    Text("Abhijith Benny",style: TextStyle(
    fontSize: 30,color: Colors.teal,
    ),),
          Text("College Student",style: TextStyle(
            fontSize: 20,color: Colors.teal,),),
          Card(child: ListTile(
            leading: Icon(Icons.phone),
            title: Text("+91 8590180981"),

          ),),
          Card(child: ListTile(
            leading: Icon(Icons.mail),
            title: Text("abhijithenny04@gmail.com"),

          ),),



        ]
    ),
    ),
    );
  }
}
