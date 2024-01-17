import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridviewcard(),
  ));
}

class Gridviewcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: GridView.custom(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          childrenDelegate: SliverChildListDelegate([
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Card(
                  color: Colors.lime,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home,size: 35),
                        Text(
                          "Home",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  )),
            ),

            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Card(
                  color: Colors.blueAccent,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.email,size: 35),
                        Text(
                          "Email",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  )),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Card(
                  color: Colors.brown,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.alarm,size: 35),
                        Text(
                          "Alarm",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  )),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Card(
                  color: Colors.redAccent,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.wallet,size: 35),
                        Text(
                          "Wallet",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  )),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Card(
                  color: Colors.blueGrey,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.backup,size: 35),
                        Text(
                          "Backup",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  )),
            ),
            const Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                  color: Colors.green,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.book,size: 35),
                        Text(
                          "Book",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  )),
            ),
            const
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                  color: Colors.purpleAccent,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.camera,size: 35),
                        Text(
                          "Camera",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  )),
            ),
           const Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                  color: Colors.brown,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person,size: 35),
                        Text(
                          "Person",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  )),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Card(
                  color: Colors.lightGreen,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.print,size: 35),
                        Text(
                          "Print",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  )),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Card(
                  color: Colors.pinkAccent,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.phone,size: 35),
                        Text(
                          "Phone",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  )),
            ),
            const Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                  color: Colors.blueAccent,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.notes,size: 35),
                        Text(
                          "Notes",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  )),
            ),
            const Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                  color: Colors.lime,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.music_note,size: 35),
                        Text(
                          "Music",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  )),
            ),
          ])),
    );
  }
}
