import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: picture(),));
}
class picture extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Image(image: NetworkImage("https://images.unsplash.com/photo-1689332220916-3cb59b7b6314?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"),
            //height: 500,
            //width: 400,
        ),
            Text("Welcome",style: GoogleFonts.pacifico(fontSize: 50,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }

}