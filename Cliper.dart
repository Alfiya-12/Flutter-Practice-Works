import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: CliperWidget(),));
}
class CliperWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Clippers"),),
      body: ListView(
        children: [ClipRect(

          child: Align(
            heightFactor: 4,
            widthFactor: 6,
            child: Image.network("https://images.unsplash.com/photo-1595152772835-219674b2a8a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
          ),
        ),
          ClipRRect(
            borderRadius: BorderRadius.circular(300),
            child: Image.network("https://images.unsplash.com/photo-1595152772835-219674b2a8a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
          ),
          ClipOval(
            child: Image.network("https://images.unsplash.com/photo-1675368173834-2f813da003bc?q=80&w=1926&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
          ),
          ClipPath(
            clipper: ParallelogramClipper(),
            child: Container(
              width: 150,
              height: 200,
              color: Colors.lime,
              child: Center(child: Text("Parallelogram clipper")),
            ),
          ),
          ClipPath(
            clipper: WavyCircleClipper(20),
            child: Container(
              height: 500,
              width: 200,
              color: Colors.pinkAccent,
              child: Center(child: Text("Wavy circle"),),
            ),
          ),
          ClipPath(
            clipper: WaveClipperOne(),
            child: Container(
              height: 100,
              width: 200,
              color: Colors.blue,
              child: Center(child: Text("Wave clipper"),),
            ),
          )

        ]
      ),
    );
  }
  
}