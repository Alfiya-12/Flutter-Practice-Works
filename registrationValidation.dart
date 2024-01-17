import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject1/Practice/LogIn.dart';
import 'package:flutterproject1/basic/LoginPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: registrationValidation(),
  ));
}

class registrationValidation extends StatefulWidget {
  const registrationValidation({super.key});

  @override
  State<registrationValidation> createState() => _registrationValidationState();
}

class _registrationValidationState extends State<registrationValidation> {
  //validate the entire form

  final formkey = GlobalKey<FormState>();
  var confirmpass;
  bool showpassword = true;
  bool showpassword2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stateful registration"),
        ),
        body: Form(
            key: formkey,
            child: Column(
              children: [
                Text("Registration page"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Username",
                    ),
                    validator: (email) {
                      if (email!.isEmpty || !email.contains("@")) {
                        return "Enter a valid email/fields must not be empty";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: showpassword,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (showpassword) {
                                showpassword = false;
                              } else {
                                showpassword = true;
                              }
                            });
                          },
                          icon: Icon(showpassword == true
                              ? Icons.visibility
                              : Icons.visibility_off_sharp)),
                      border: OutlineInputBorder(),
                      hintText: "password",
                    ),
                    textInputAction: TextInputAction.continueAction,
                    validator: (password) {
                      if (password!.isEmpty || password.length < 6) {
                        return "password length should be greater than 6/must not be empty";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                    TextFormField(
                      obscureText: showpassword2,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                if (showpassword2) {
                                  showpassword2 = false;
                                } else {
                                  showpassword2 = true;
                                }
                              });
                            },
                            icon: Icon(showpassword2 == true
                                ? Icons.visibility
                                : Icons.visibility_off_sharp)),
                        border: OutlineInputBorder(
                          
                        ),
                        hintText: "confirmpassword",

                      ),
                      validator: (confirmpass){
                        if(confirmpass != confirmpass || confirmpass!.isEmpty){
                          return "Password mismatch or empty field";

                        }
                        else{
                          return null;
                        }
                      },
                  ),
                ),
                ElevatedButton(onPressed: (){
                  var isValid=formkey.currentState!.validate();
                  if (isValid==true){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LogIn()));
                  }
                }, child: Text("Register"))
              ],
            )));
  }
}
