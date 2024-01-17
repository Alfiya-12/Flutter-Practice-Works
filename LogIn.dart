import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject1/Practice/registerPage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homePage.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: LogIn(),));
}

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Color.fromRGBO(191	,240	,152,25),Color.fromRGBO(111, 214, 255,25)]),
        ),
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.person,size: 100.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Log In",style: GoogleFonts.headlandOne(fontSize: 35,fontWeight: FontWeight.bold),),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Log in using your username and password"),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "UserName",
                  prefixIcon: Icon(Icons.person)
                ),

              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password",
                    prefixIcon: Icon(Icons.person)
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const homePage()));
              }, child: const Text("Sign In")),
            ),
            TextButton(onPressed: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const registerPage()));
            }, child: const Text("Don't have an account?Register")),
          ],
        ),),
      ),
    );
  }
}
