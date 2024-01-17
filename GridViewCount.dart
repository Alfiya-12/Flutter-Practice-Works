import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridviewcount(),
  ));
}

class Gridviewcount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(
            20,
            (index) => Container(
                  decoration: BoxDecoration(
                    color: Colors.lime,
                    borderRadius: BorderRadius.circular(200)
                  ),
              child: Column(
                children: [
                  Image.asset("assets/icon/women.png"),
                  const Text("Welcome",style: TextStyle(fontSize: 20),)
                ],
              ),
                ),),
      ),
    );
  }
}
