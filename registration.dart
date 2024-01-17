import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: registration(),));
}
class registration extends StatefulWidget {
  const registration({super.key});

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
   final TextEditingController nme=TextEditingController();
   final TextEditingController uname=TextEditingController();
   final TextEditingController pswd=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Sign Up",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.brown),),
          const Text("Create an account"),
          Padding(
            padding: const EdgeInsets.all(30),
            child: TextField(
              controller: nme,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Name",
                prefixIcon: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: TextField(
              controller: uname,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                 hintText: "Email",
                prefixIcon: Icon(Icons.email),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(30),
            child: TextField(
              controller: pswd,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Password",
                prefixIcon: Icon(Icons.visibility_off_sharp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){}, child: const Text("Sign up")),
          ),
          TextButton(onPressed: (){}, child: const Text("Do you have an account??"))
        ],
      ),
    );
  }
}
