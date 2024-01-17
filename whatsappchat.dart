import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: whatsappchat(),
  ));
}

class whatsappchat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: const Text("Whatsapp"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt_outlined),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          PopupMenuButton(itemBuilder: (context) {
            return [
              const PopupMenuItem(child: Text("New group")),
              const PopupMenuItem(child: Text("New broadcast")),
              const PopupMenuItem(child: Text("Linked devices")),
              const PopupMenuItem(child: Text("Starred messages")),
              const PopupMenuItem(child: Text("Payments")),
              const PopupMenuItem(child: Text("Settings"))
            ];
          }),
        ],
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/person1.png")),
            title: Text("Sara"),
            subtitle: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.done_all,
                  color: Colors.blue,
                ),
                Text("Hii,How are you"),
              ],
            ),
            trailing: Text("10:45"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/person2.png"),
            ),
            title: Text("Maria"),
            subtitle: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.done_all,
                  color: Colors.blue,
                ),
                Text("Where are you?"),
              ],
            ),
            trailing: Text("09:00"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/boat.png"),
            ),
            title: Text("Sam"),
            subtitle: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.done_all),
                Text("My work is done"),
              ],
            ),
            trailing: Text("08:54"),
          ),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage("assets/icon/women.png")),
            title: Text("Office"),
            subtitle: Row(
              children: [
                Icon(Icons.done),
                Text("report immediately"),
              ],
            ),
            trailing: Text("07:11"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green[800],
          child: const Icon(Icons.message)),
    );
  }
}
