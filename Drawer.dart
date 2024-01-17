import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DrawerEx(),
  ));
}

class DrawerEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/mountain.png"),
                ),
              ),
              accountName: Text(
                "Alfiya",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              accountEmail: Text(
                "alfia@gmail.com",
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: Stack(children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/person1.png"),
                ),
                Positioned(child: Icon(Icons.edit,size: 20,))
              ]),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/person2.png"),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/boat.png"),
                )
              ],
            ),
            ListTile(
              leading: Icon(Icons.menu),
              title: Text("Menu"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Account"),
            ),
          ],
        ),
      ),
    );
  }
}
