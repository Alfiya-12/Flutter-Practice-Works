import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RestaurantHome(),
  ));
}

class RestaurantHome extends StatefulWidget {
  @override
  State<RestaurantHome> createState() => _RestaurantHomeState();
}

class _RestaurantHomeState extends State<RestaurantHome> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://as2.ftcdn.net/v2/jpg/02/69/03/17/1000_F_269031787_AGH2qf7p85PyDjZe0sCKBJVdWTAJ0Dc0.jpg"),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Let's make your",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "next meal incredible",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      style: ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(5),),),),
                        onPressed: () {},
                        child: Text(
                          "Unique Restaurants",
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ),
            ),

          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            elevation: 10,
            onTap: (tapindex) {
              setState(() {
                index = tapindex;
              });
            },
            currentIndex: index,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle), label: "Me"),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.heart), label: "Activity"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.collections), label: "Collections"),
              BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More")
            ]),
      ),
    );
  }
}
