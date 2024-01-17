import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'LogIn.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash_Page(),
  ));
}
class Splash_Page extends StatefulWidget {
  const Splash_Page({super.key});

  @override
  State<Splash_Page> createState() => _Splash_PageState();
}

class _Splash_PageState extends State<Splash_Page> {
  @override
  void initState(){
  Timer( const Duration(seconds: 3), () {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => const LogIn() ));
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Color.fromRGBO(191	,240	,152,25),Color.fromRGBO(111, 214, 255,25)]),

        ),
        child: Center(child: Image.asset("assets/icon/tree.png"),),
      ),
    );
  }
}

