import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject1/Practice/homePage.dart';
import 'package:flutterproject1/basic/WhatsappCall.dart';
import 'package:flutterproject1/basic/whatsappchat.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BottomNavBar(),
  ));
}

class BottomNavBar extends StatefulWidget {
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;
  var screens = [
    homePage(),
    whatsappchat(),
    WhatsappCall(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomNavigationBar"),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.grey,
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          type: BottomNavigationBarType.shifting,
          currentIndex: index,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.purpleAccent,
                icon: Icon(Icons.home),
                label: "Home"),
            BottomNavigationBarItem(
                backgroundColor: Colors.pinkAccent,
                icon: Icon(Icons.settings),
                label: "Settings"),
            BottomNavigationBarItem(
                backgroundColor: Colors.redAccent,
                icon: Icon(Icons.person),
                label: "Profile")
          ]),
      body: screens[index],
    );
  }
}
