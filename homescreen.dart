import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: homeScreen(),
  ));
}

class homeScreen extends StatefulWidget {
  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
           SliverAppBar(
            title: Column(
              children: [
                Text("Lets make your next"),
                Text(" meal incredible"),
                TextButton(onPressed: (){}, child: Text("Unique Restaurants"))
              ],
            ),
            backgroundColor: Colors.red,
            pinned: false,
            floating: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://as2.ftcdn.net/v2/jpg/02/69/03/17/1000_F_269031787_AGH2qf7p85PyDjZe0sCKBJVdWTAJ0Dc0.jpg",
                  )),
            ),
          ),
          //---------Search------------
          SliverAppBar(
            backgroundColor: Colors.white,
            pinned: true,
            floating: false,
            title: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search for nearby restaurants, shops....",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          //------gridview------
          SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
                  child: GridView(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                      ),
                      children: const [
                        Column(
                          children: [
                            Icon(Icons.restaurant_menu_outlined),
                            Text("Restaurants")
                          ],
                        ),
                        Column(
                          children: [
                            FaIcon(FontAwesomeIcons.mugHot),
                            Text("Coffee & Tea")
                          ],
                        ),
                        Column(
                          children: [
                            FaIcon(FontAwesomeIcons.bowlFood),
                            Text("Special Menu")
                          ],
                        ),
                        Column(
                          children: [
                            FaIcon(FontAwesomeIcons.wineGlassEmpty),
                            Text("Bars")
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.electric_scooter,color: Colors.red,),
                            Text("Delivery")
                          ],
                        ),
                        Column(
                          children: [
                            FaIcon(FontAwesomeIcons.calendarDays,),
                            Text("Reservations")
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.takeout_dining_outlined),
                            Text("Takeout")
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.more_horiz_outlined),
                            Text("More")
                          ],
                        ),
                      ]),
                ),
                //------image-----
                const Divider(
                  color: Colors.black,
                  thickness: 0.5,
                ),
                const SizedBox(
                  height: 250,
                  width: 300,
                  child: Image(
                    image: NetworkImage(
                        "https://static-00.iconduck.com/assets.00/14-location-not-found-illustration-512x362-ju9i7gzu.png"),
                  ),
                ),
                const Text("Are you a ninja?Your location coun't be found"),
                TextButton(onPressed: () {}, child: const Text("Retry"))
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          elevation: 10,
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          currentIndex: index,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "Me"),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.heart), label: "Activity"),
            BottomNavigationBarItem(
                icon: Icon(Icons.collections), label: "Collections"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More")
          ]),
    );
  }
}
