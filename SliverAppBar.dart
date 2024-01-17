import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Sliverex(),));
}
class Sliverex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text("Sliver app bar"),
            bottom: AppBar(
              elevation: 0,
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white38,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search here",
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.access_time_filled),
                  ),
                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30)
            ),
            height: 80,
            child: Text(style: TextStyle(fontSize: 30),
            "User $index"),
          )))

          
        ],
      ),
        
      ),
    );
  }

}