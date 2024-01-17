import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: listSeperated(),));
}
class listSeperated extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("list view seperated"),),
      body: ListView.separated(itemBuilder: (context,index){
        return const Card(
          elevation: 20,
          child: ListTile(
            leading: Image(image: AssetImage("assets/icon/tree.png"),
            ),
            title: Text("Hii"),
            trailing: Text("time"),
          ),
        );
      }, separatorBuilder: (context,index)
          {
            return const Divider(color: Colors.red,);
          }, itemCount: 10),
    );
  }

}