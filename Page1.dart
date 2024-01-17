import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Page2.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: page1(),
  ));
}

class page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 300),
            child: Column(
              children: [
                Text(
                  "Add your",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Music",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Center(
                child: Image.asset(
                    "assets/animation/music.gif")),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200,left: 400),
            child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: Colors.orangeAccent)
                      ),
                    ),
                    backgroundColor: MaterialStatePropertyAll(Colors.white)),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page2(),));
                },
                child: Text("Skip",style: TextStyle(color: Colors.orangeAccent),)),
          )
        ],
      ),
    );
  }
}
