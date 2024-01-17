import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: listcolor(),
  ));
}

class listcolor extends StatelessWidget {
  var names = ["Black hacker", "White hacker", "Black company", "Money"];
  var images = [
    "assets/icon/tree.png",
    "assets/icon/women.png",
    "assets/icon/tree.png",
    "assets/icon/women.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo Home Page"),
      ),
      body: ListView.custom(
          childrenDelegate: SliverChildListDelegate(List.generate(
              4,
              (index) => Card(
                    color: Colors.lightBlueAccent,
                    child: ListTile(
                      leading: Text(
                        names[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Image(image: AssetImage(images[index])),
                    ),
                  )))),
    );
  }
}
