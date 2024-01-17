

import 'package:flutter/cupertino.dart';

void main(){
  runApp(const Center(child: Text("Hello world !!",
    textDirection: TextDirection.ltr,
    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: true),
  ),

  ));
}