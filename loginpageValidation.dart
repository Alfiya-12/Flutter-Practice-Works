import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'HomePage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: loginValidation(),
  ));
}

class loginValidation extends StatefulWidget {
  @override
  State<loginValidation> createState() => _loginValidationState();
}

class _loginValidationState extends State<loginValidation> {
  String username = "mnalfiya@gmail.com";
  String password = "Alfiya@1999";
  final TextEditingController uname = TextEditingController();
  final TextEditingController pswd = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlueAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage("assets/icon/women.png"),
                width: 100,
                height: 150,
              ),
              Text("Log In",
                  style: GoogleFonts.headlandOne(
                      fontSize: 25, fontWeight: FontWeight.bold)),
              const Text("Login using your username and password"),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: TextField(
                  controller: uname,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Username",
                    helperText: "Username must be an email",
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: TextField(
                  controller: pswd,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: "Password",
                    helperText: "password must contain special characters",
                    prefixIcon: const Icon(Icons.visibility_off_sharp),
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.visibility_off_sharp)),
                  ),
                  obscureText: true,
                  obscuringCharacter: ".",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      if (uname.text != "" && pswd.text != "") {
                        if (uname.text == username && pswd.text == password) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const HomePage()));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text("Username/Password incorrect"),
                            backgroundColor: Colors.red,
                          ));
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Fields must not be empty"),
                          backgroundColor: Colors.red,
                        ));
                      }
                    },
                    child: const Text("Login")),
              ),
              TextButton(
                  onPressed: () {
                    
                  }, child: const Text("Not a user!!!Register here.."))
            ],
          ),
        ),
      ),
    );
  }
}
