import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Cslider(),
  ));
}

class Cslider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
          items: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image:AssetImage("assets/images/boat.png")
                  
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/apple.png"))),
            ),
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/mountain.png"))),
            ),
          ],
          options: CarouselOptions(
              height: 300,
              aspectRatio: 16 / 9,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              initialPage: 1,
              viewportFraction: 0.8,
            enableInfiniteScroll: true,
            autoPlayCurve: Curves.easeInOutCubicEmphasized,
            enlargeCenterPage: false,
            enlargeFactor: 2,
            scrollDirection: Axis.horizontal
          )),
    );
  }
}
