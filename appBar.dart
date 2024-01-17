import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: firstScreen(),));
}
class firstScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text("Welcome"),backgroundColor: Colors.purpleAccent,
     ),
     body: const Center(child: Icon(Icons.message,size: 100,color: Colors.purpleAccent),),
   );
  }

}