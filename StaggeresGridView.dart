import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../MyWidget.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StagGrid(),
  ));
}

class StagGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered Grid"),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(crossAxisCount: 4, children: [
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Card(
                color: Colors.blue,
                child: Center(
                  child: Image.asset("assets/images/mountain.png",fit: BoxFit.fill,)
                ),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 2,
              child: MyWidget(
                  label:Image.asset("assets/images/mountain.png"),
                  onpress:(){},
                  bgcolor:Colors.red,
                 // bgimage:Image.asset("assets/images/mountain.png")
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 2,
              child: Card(
                color: Colors.blue,
                child: Center(
                  child:Image.asset("assets/images/mountain.png")
                ),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Card(
                color: Colors.green,
                child: Center(
                  child: Image.asset("assets/images/mountain.png")
                ),
              ))
        ]),
      ),
    );
  }
}
