import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: facebookui(),
  ));
}

class facebookui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Facebook",
            style: TextStyle(
                color: Colors.blue[800],
                fontWeight: FontWeight.w900,
                fontSize: 30),
          ),
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                color: Colors.grey[800],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.message),
                color: Colors.grey[800],
              ),
            )
          ],
          bottom: TabBar(tabs: [
            Icon(
              Icons.home_outlined,
              color: Colors.grey[800],
              size: 25,
            ),
            Icon(
              Icons.groups,
              color: Colors.grey[800],
              size: 25,
            ),
            Icon(
              Icons.video_chat,
              color: Colors.grey[800],
              size: 25,
            ),
            Icon(
              Icons.flag_outlined,
              color: Colors.grey[800],
              size: 25,
            ),
            Icon(
              Icons.doorbell_outlined,
              color: Colors.grey[800],
              size: 25,
            ),
            Icon(
              Icons.menu,
              color: Colors.grey[800],
              size: 25,
            ),
          ]),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/person1.png"),
                ),
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    style: const TextStyle(fontSize: 15
                    ),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Colors.black12 )
                        ),
                        hintText: "What's on your mind?",),
                  ),
                ),
              ),
            ),
            const Divider(),
            Row(

              children: [

                SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.videocam_rounded,color: Colors.red,),
                      Text("Live"),
                    ],
                  ),
                ),

                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.photo_album,color: Colors.green,),
                      Text("Photo"),
                      VerticalDivider(),
                    ],
                  ),
                ),
                Divider(),

                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on,color: Colors.pinkAccent,),
                      Text("Live"),
                    ],
                  ),
                )
              ],
            )
          ],
        ),

      ),
    );
  }
}
