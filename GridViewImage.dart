import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridImage(),
  ));
}

class GridImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image gallery example"),
      ),
      body: GridView.custom(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 20),
          childrenDelegate: SliverChildListDelegate([
            Image.asset("assets/images/apple.png"),
            Image.asset("assets/images/banana.png"),
            Image.asset("assets/images/cherry.png"),
            Image.asset("assets/images/orange.png"),
            Image.asset("assets/images/pineapple.png"),
            Image.asset("assets/images/person1.png"),
            Image.asset("assets/images/person2.png"),
          ])),
    );
  }
}
