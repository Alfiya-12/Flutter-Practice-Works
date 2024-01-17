import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridviewcustom(),
  ));
}

class Gridviewcustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),

        ///way1
        // childrenDelegate: SliverChildListDelegate([
        //   Card(
        //     child: Text("hi"),
        //   )
        // ]),

        ///way2
        //childrenDelegate: SliverChildListDelegate(List.generate(10, (index) => Card(child: Text("hi"),))),

        ///way3
        childrenDelegate: SliverChildBuilderDelegate(
            childCount: 10,
            (context, index) => const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Card(
                      child: Text("Hello"),
                    ),
                  ),
                )),
      ),
    );
  }
}
