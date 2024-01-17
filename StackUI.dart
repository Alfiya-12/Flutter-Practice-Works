import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StackUI(),
  ));
}

class StackUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.purple,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(clipBehavior: Clip.none, children: [
              ClipPath(
                clipper: OvalBottomBorderClipper(),
                child: Container(height: 380, color: Colors.purple),
              ),
              Positioned(
                top: 100,
                left: 200,
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(300)),
                  child: const Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Your score",
                        style: TextStyle(color: Colors.purple),
                      ),
                      Text("150 pt",
                          style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ],
                  )),
                ),
              ),
              Positioned(
                right: 25,
                left: 25,
                top: 280,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Card(
                    child: Container(
                      color: Colors.white,
                      height: 150,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 25, left: 25, right: 25, bottom: 25),
                        child: ListView(children: const [
                          ListTile(
                            leading: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "100%",
                                    style: TextStyle(
                                        color: Colors.purple,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text("Completion")
                                ],
                              ),
                            ),
                            trailing: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "20",
                                    style: TextStyle(
                                        color: Colors.purple,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text("Total questions")
                                ],
                              ),
                            ),
                          ),
                          ListTile(
                            leading: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "13",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text("Correct")
                                ],
                              ),
                            ),
                            trailing: Padding(
                              padding:
                                  EdgeInsets.only(right: 65, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "07",
                                    style: TextStyle(
                                        color: Colors.orangeAccent,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text("wrong")
                                ],
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ),
              )
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: GridView(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                children: const [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.replay,
                        color: Colors.blue,
                      ),
                      Text("Reply")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.visibility,
                        color: Colors.orangeAccent,
                      ),
                      Text("Play again")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.purple,
                      ),
                      Text("Share score")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.picture_as_pdf,
                        color: Colors.blue,
                      ),
                      Text(
                        "Generate PDF",
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.pinkAccent,
                      ),
                      Text("Home")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.stars,
                        color: Colors.lime,
                      ),
                      Text("Score board")
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
