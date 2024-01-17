import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: firstPage(),));
}
class firstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hello there !!",style: GoogleFonts.gabriela(fontSize: 50,fontWeight: FontWeight.w300),),
              const Text("Automatic identity verification"),
              Image.asset("assets/icon/women.png",alignment: Alignment.center,height: 180,width: 180,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(onPressed: (){}, child: const Text("Log In")),
                  ),
                ],
              ),
              ElevatedButton(onPressed: (){}, child: const Text("Sign Up")),

            ],
          ),
        ),
      ),
    );
  }

}