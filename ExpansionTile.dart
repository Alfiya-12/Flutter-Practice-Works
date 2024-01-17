import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Expansionnn(),
  ));
}

class Expansionnn extends StatelessWidget {
  var colors = [Colors.red, Colors.green, Colors.blue, Colors.lime];
  var names = ["red", "green", "blue", "lime"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion tile"),
      ),
      body: Column(
        children: [
          ExpansionTile(
            title: Text("List of colors"),
            children: List.generate(4, (index) => ListTile(
              leading: CircleAvatar(backgroundColor: colors[index]),
              title: Text(names[index]),
            ))
          ),
          ExpansionTile(
              title: Text("List of colors"),
              children: List.generate(4, (index) => ListTile(
                leading: CircleAvatar(backgroundColor: colors[index]),
                title: Text(names[index]),
              ))
          ),
          ExpansionTile(
              title: Text("List of colors"),
              children: List.generate(4, (index) => ListTile(
                leading: CircleAvatar(backgroundColor: colors[index]),
                title: Text(names[index]),
              ))
          ),
          ExpansionTile(
            controlAffinity: ListTileControlAffinity.leading,
              title: Text("List of colors"),
              children: List.generate(4, (index) => ListTile(
                leading: CircleAvatar(backgroundColor: colors[index]),
                title: Text(names[index]),
              ))
          ),
        ],
      ),

    );
  }
}
