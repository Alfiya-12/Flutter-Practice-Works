import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WhatsappCall(),
  ));
}

class WhatsappCall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        title: Text("WhatsApp"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(child: Text("Clear call log")),
              PopupMenuItem(child: Text("Settings"))
            ];
          })
        ],
      ),
      body: ListView(
        children: [
          Card(
            elevation: 0,
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/person1.png")),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.phone),
                color: Colors.green[700],
              ),
              title: Text("Anna George(3)"),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.call_received,color: Colors.red,size: 15,),
                  Text("20 minutes ago")
                ],
              ),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/person1.png")),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.video_call),
                color: Colors.green[700],
              ),
              title: Text("Anna George)"),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.call_made,color: Colors.green[700],size: 15,),
                  Text("30 minutes ago")
                ],
              ),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/person2.png")),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.phone),
                color: Colors.green[700],
              ),
              title: Text("Anna George(3)"),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.call_received,color: Colors.red,size: 15,),
                  Text("Yesterday,12:23 PM")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
