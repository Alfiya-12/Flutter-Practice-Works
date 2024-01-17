import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'LoginPage.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: splash_screen(),));
}
class splash_screen extends StatefulWidget{
  @override
  State<splash_screen> createState()=>splash_screenState();

 //create an intial state for the screen

}
class splash_screenState extends State<splash_screen>
{
  //initial state of a splash screen
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage()));
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: const BoxDecoration(image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
              "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif"),
        ),

        ),
        child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Image(image: NetworkImage("assets/icon/tree.png"),),
            Text("My app",style: GoogleFonts.pacifico(color: Colors.red,fontSize: 20),)
          ],
        ),),
      ),
    );
  }}

