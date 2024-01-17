import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject1/Practice/LogIn.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: registerPage(),));
}

class registerPage extends StatefulWidget {
  const registerPage({super.key});

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
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
            Text("Register",style: GoogleFonts.headlandOne(fontSize: 35,fontWeight: FontWeight.bold),),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Name",
                    helperText: "Name must contain atleast 4 characters",

                    prefixIcon: Icon(Icons.drive_file_rename_outline)
                ),

              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "UserName",
                    helperText: "Username must be email",
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
                    helperText: "Password must contain atleast 6 characters",
                    prefixIcon: Icon(Icons.visibility_off_sharp)
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LogIn()));
              }, child: const Text("Register")),
            ),
            TextButton(onPressed: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LogIn()));
            }, child: const Text("Already have an account?Sign in")),
          ],
        ),),
      ),
    );
  }
}
