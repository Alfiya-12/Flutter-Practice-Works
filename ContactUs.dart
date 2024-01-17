import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ContactUs(),
    theme: ThemeData(primarySwatch: Colors.brown,),
  ));
}

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Contact Us",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Fill up the form below to send us a message"),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 400),
            child: Text("Full Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "John Doe",

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 380),
            child: Text("Email Address",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "your@company.com",

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 380),
            child: Text("Phone Number",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "+(91)123456789",

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 380),
            child: Text("Your message",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.multiline,
              minLines: null,
              maxLines: 8,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Your message",

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                ElevatedButton(onPressed: () {}, child: Text("Send Message"),),
          )
        ],
      ),
    );
  }
}
