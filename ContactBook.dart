import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ContactBook(),
  ));
}

class ContactBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Book",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/person1.png"),
              ),
              title: const Text("Anna George"),
              subtitle: const Text("8330875539"),
              trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios)),
            ),
          ),
          Card(
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/person2.png"),
              ),
              title: const Text("Maria"),
              subtitle: const Text("8086786589"),
              trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios)),
            ),
          ),
          Card(
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/icon/women.png"),
              ),
              title: const Text("Santa"),
              subtitle: const Text("8147658969"),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),
            ),
          ),
          Card(
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/boat.png"),
              ),
              title: const Text("James"),
              subtitle: const Text("9895163090"),
              trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios)),
            ),
          ),
        ],
      ),
    );
  }
}
