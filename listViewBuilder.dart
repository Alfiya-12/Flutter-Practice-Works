import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: listView1(),
    ),
  );
}

class listView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview builder"),),
      body: ListView.builder(itemBuilder: (context,index){
        return Card(
          child: ListTile(
            leading: Image.asset("assets/icon/women.png"),
            title: Text("Friend"),
            subtitle: Text("Hello"),
            trailing: Text("12:20"),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.message),),
    );
  }
}
