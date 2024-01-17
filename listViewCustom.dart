import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: listCustom(),
  ));
}

class listCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("listview custom"),
      ),
      // body: ListView.custom(
      //   childrenDelegate: SliverChildBuilderDelegate(
      //       childCount: 10, (context, index) => Text("Hii")),
      // ),
      body: ListView.custom(
        childrenDelegate: SliverChildListDelegate(
          List.generate(
            10,
            (index) => Card(
              child: ListTile(
                 leading: Image(image: AssetImage("assets/icon/women.png"),
                 ),
                title: Text("friend"),
                subtitle: Text("hii"),
                trailing: Text("11:09"),
                
              ),
            ),
          ),
        ),
      ),
    );
  }
}
