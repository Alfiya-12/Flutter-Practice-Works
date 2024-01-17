import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Page2(),
  ));
}

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  bool isfavorite = false;
  int index = 0;

  var links=[
    "https://upload.wikimedia.org/wikipedia/en/b/b4/Shape_Of_You_%28Official_Single_Cover%29_by_Ed_Sheeran.png",
    "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/0a478195717717.5e9e085904e55.png",
    "https://mir-s3-cdn-cf.behance.net/project_modules/1400_opt_1/9c72f095717717.5e9e085a245f4.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSh23yxyhHbcPempHME6n5S7s6llmrmka600WKSX1JgwvepUDkqdKPj6ZM65Z-Bzt6FF4&usqp=CAU",
    "https://pro2-bar-s3-cdn-cf.myportfolio.com/33426f6e-4bd5-46b3-bce8-20d84fb5cf10/147e1328-8613-4a80-8fa9-f0ede07e7bfd_rw_1200.JPG?h=2f8a4253ab7b90a6fb043b98e46ad1bf",
    "https://static.musictoday.com/store/bands/5262/product_large/X9APKB10.jpg"
  ];
  var name=[
    "Believer",
    "Shape of you",
    "Easy",
    "In your eyes",
    "Physical",
    "Jazz",
    "If you go down",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: SizedBox(
          width: 450,
          height: 40,
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.orangeAccent[100],
                prefixIcon: Icon(Icons.search),
                hintText: "Search",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none)),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/person1.png"),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Text(
              "Albums",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            trailing: TextButton(
                onPressed: () {},
                child: Text(
                  "View All",
                  style: TextStyle(color: Colors.grey),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          CarouselSlider(
            items: [
              Card(
                child: Container(
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://rukminim2.flixcart.com/image/850/1000/kngd0nk0/poster/r/x/j/medium-poster-believer-imagine-dragons-poster-12-x-18-inch-ten-original-imag24hzhgdbzvxk.jpeg?q=90"),
                    ),
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/0a478195717717.5e9e085904e55.png"),
                    ),
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://rukminim2.flixcart.com/image/850/1000/kngd0nk0/poster/r/x/j/medium-poster-believer-imagine-dragons-poster-12-x-18-inch-ten-original-imag24hzhgdbzvxk.jpeg?q=90"),
                    ),
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/en/b/b4/Shape_Of_You_%28Official_Single_Cover%29_by_Ed_Sheeran.png"),
                    ),
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
                height: 120,
                scrollDirection: Axis.horizontal,
                viewportFraction: 0.3,
                initialPage: 0,
                autoPlay: false,
                aspectRatio: 16 / 9,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayCurve: Curves.ease),
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: Text(
              "Albums",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            trailing: TextButton(
                onPressed: () {},
                child: Text(
                  "View All",
                  style: TextStyle(color: Colors.grey),
                )),
          ),
          ListView(
            shrinkWrap: true,
            children: List.generate(5, (index) =>
                ListTile(
                  leading: Container(
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage(links[index]))
                    ),
                  ),
                  title: Text(name[index]),
                  subtitle: Text(name[index]),
                  trailing: IconButton(onPressed: (){
                    setState(() {
                      isfavorite=!isfavorite;
                    });
                  }, icon: Icon(isfavorite? Icons.favorite : Icons.favorite_border_outlined)),
                )
            ),
          )
        ],
      )),
      bottomNavigationBar: SalomonBottomBar(
          onTap: (tapindex) => setState(() {
                index = tapindex;
              }),
          currentIndex: index,
          backgroundColor: Colors.orange,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          items: [
            SalomonBottomBarItem(
              icon: Icon(Icons.search),
              title: Text("search"),
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.music_note),
              title: Text("music"),
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.favorite),
              title: Text("favorites"),
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("profile"),
            )
          ]),
    );
  }
}
