import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Customtab(),
  ));
}

class Customtab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            title: const Text(
              "Custom tab bar",
              style: TextStyle(color: Colors.purpleAccent),
            ),
            bottom: ButtonsTabBar(

                backgroundColor: Colors.purpleAccent,
                tabs: const [
                  Tab(
                    icon: Icon(Icons.sports_cricket),
                  ),
                  Tab(
                    icon: Icon(Icons.sports_football),
                  ),
                  Tab(
                    icon: Icon(Icons.sports_baseball),
                  )
                ])),
        body: const TabBarView(children: [
          Center(child: Text("Cricket")),
          Center(child: Text("Football")),
          Center(child: Text("Baseball"))
        ]),
      ),
    );
  }
}
