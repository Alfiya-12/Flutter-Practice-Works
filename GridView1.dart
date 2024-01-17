import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridView1(),
  ));
}

class GridView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: GridView(
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //         crossAxisCount: 3, crossAxisSpacing: 30, mainAxisSpacing: 10),

      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100, crossAxisSpacing: 30, mainAxisSpacing: 10),
        children: List.generate(
            20,
            (index) => Card(
                  child: Center(
                    child: Image.asset("assets/images/boat.png"),
                  ),
                )),
      ),
    );
  }
}
