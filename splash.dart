import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: splash(),
  ));
}
class splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       decoration: const BoxDecoration(
         color: Colors.yellow,
       ),
       child: const Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text("Welcome",)
           ],
         ),
       ),
     ),
   );
  }

}