import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: logIn(),));
}
class logIn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: const Text("Log In"),),
     body: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           TextField(
             decoration: InputDecoration(
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),
               ),
               hintText: "Username",
               helperText: "Username must be email",
               prefixIcon: const Icon(Icons.person),
             ),

           ),
           TextField(
             decoration: InputDecoration(
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),
               ),
               hintText: "Password",
               helperText: "Password must contain 8 characters",
               prefixIcon: const Icon(Icons.visibility_off_sharp),
             ),

           ),
           TextButton(onPressed: (){}, child:const Text("Log In")),
         ],
       ),
     ),
   );
  }

}