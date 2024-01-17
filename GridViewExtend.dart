import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridviewextend(),
  ));
}

class Gridviewextend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
        maxCrossAxisExtent: 50,
        children: List.generate(
            10,
            (index) => const Card(
                  child: Center(
                    child: Icon(
                      Icons.ac_unit,
                      size: 60,
                    ),
                  ),
                )),
      ),
    );
  }
}
