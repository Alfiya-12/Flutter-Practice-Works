import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DrawerExample(),
  ));
}

class DrawerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: Stack(
                  children:[
                    Container(
                      height: 200,
                      width: 200,
                      child: CircleAvatar(
                        

                      backgroundImage: AssetImage("assets/images/person1.png"),

                  ),
                    ),
                    Positioned(
                      top: 50,left: 40,
                        child: Icon(Icons.edit,color: Colors.white,))
                  ]
                ),
                accountName: Text("XYZ"),
                accountEmail: Text("someemail@gmail.com")),
            ListTile(
              leading: Icon(Icons.inbox),
              title: Text("Inbox"),
              trailing: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.blueGrey[200],
                  borderRadius: BorderRadius.circular(13)
                      
                ),
                  child: Center(child: Text("11",)))
            ),
            ListTile(
              leading: Icon(Icons.drafts_outlined),
              title: Text("Drafts"),
            ),
            ListTile(
              leading: Icon(Icons.archive_outlined),
              title: Text("Archive"),
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text("Send"),
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text("Trash"),
            ),

            SizedBox(height: 260,),
            ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                ),

          ],
        ),
      ),
    );
  }
}
