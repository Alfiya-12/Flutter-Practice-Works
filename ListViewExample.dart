import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListViewExample(),
  ));
}

class ListViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buy top rated furniture"),
        backgroundColor: Colors.pink,
      ),
      body: ListView(children: [
            Card(
              color: Colors.pink[200],
              child: ListTile(

                leading: Icon(Icons.bed),
              title: Text("Bed"),
              subtitle: Text("King sized bed"),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete)),),
            ),
        Card(
          color: Colors.pinkAccent[100],
          child: ListTile(

            leading: Icon(Icons.chair),
            title: Text("Chair"),
            subtitle: Text("King sized chair"),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete)),),
        ),
        Card(
          color: Colors.pinkAccent[100],
          child: ListTile(

            leading: Icon(Icons.table_bar),
            title: Text(""
                "Table"),
            subtitle: Text("6 seated table"),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete)),),
        ),
      ]),
    );
  }
}
