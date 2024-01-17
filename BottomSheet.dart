import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: bottomsheeeet(),));
}
class bottomsheeeet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onDoubleTap: (){
            showSheet(context);
          },
          child: Image.asset("assets/images/mountain.png"),
        ),
      ),
    );
  }

  void showSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context) {
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,),
              title: Text("Facebook"),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green,),
              title: Text("whatsapp"),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.instagram,color: Colors.pinkAccent,),
              title: Text("Instagram"),
            ),
          ],
        ),
      );
    },);
  }

}