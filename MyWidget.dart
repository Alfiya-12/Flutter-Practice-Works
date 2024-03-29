import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget{
  final Color? bgcolor;
  final Image? image;
  VoidCallback? onpress;
  Widget? label;
  AssetImage? bgimage;

  MyWidget({ this.bgcolor,required this.label,this.image,required this.onpress, this.bgimage});
@override
  Widget build(BuildContext context){
  return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("$label"))),
      child:ListTile(
        leading: image,
        trailing: label,
        onTap: onpress,
      )

  );
}

  }
