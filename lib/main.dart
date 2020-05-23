

import 'package:flutter/material.dart';
import 'package:portfolio/home.dart';
import 'package:portfolio/more.dart';
//import 'package:hover_effect/hover_effect.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
     routes: <String, WidgetBuilder> {
      '/a': (BuildContext context) => More(),}


    

  ));
  
}




  