import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: listView(),
  ));
}
class listView extends StatelessWidget{
  var names=[
    "Alfiya",
    "Afsha",
    "Shahina",
    "Darsana",
    "Alfiya",
    "Afsha",
    "Shahina",
    "Darsana"
  ];
  var images=[
    "assets/icon/tree.png",
    "assets/icon/women.png",
    "assets/icon/tree.png",
    "assets/icon/women.png",
    "assets/icon/tree.png",
    "assets/icon/women.png",
    "assets/icon/tree.png",
    "assets/icon/women.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:
          List.generate(8, (index) => Card(
            child: ListTile(
              leading: Image.asset(images[index]),
              title: Text(names[index]),
            ),
          )),

      ),
    );
  }

}