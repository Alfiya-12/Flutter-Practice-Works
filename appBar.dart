import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: Firstpage(),
));
}
class Firstpage extends StatelessWidget{
  ///stateless means firstpage do not undergo any state change
  @override
  Widget build(BuildContext context) {
    ///to create a widget tree(Build context => to monitor the widgets in the widget tree)

    return Scaffold(
      appBar: AppBar(title: const Text("Hello"),),
      body: const Center(child: Icon(Icons.lan,color: Colors.deepPurple,size: 150),
      ),

    );

  }

}