import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject1/basic/WhatsappCall.dart';
import 'package:flutterproject1/basic/whatsappchat.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: tabbarex(),));
}
class tabbarex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Scaffold(
      appBar: AppBar(title: const Text("WhatsApp"),
      backgroundColor: Colors.green[700],
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
          PopupMenuButton(itemBuilder: (context){
            return [ const PopupMenuItem(child: Text("Setting")),
              const PopupMenuItem(child: Text("Linked devices"))
            ];
          })
          
        ],
        bottom: const TabBar(tabs: [
          Icon(Icons.groups),
          Text("Chats"),
          Text("Updates"),
          Text("Calls")
        ]),

      ),
      body: const TabBarView(children: [
        Center(child: Text("Community"),),
        Center(child: Text("Status"),),
        Center(child: Text("Calls"),)
      ]),



    )
    );
    
  }
  
}