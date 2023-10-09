import 'package:flutter/material.dart';

class splashcomp {
  
   splash_image() {
    return Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/anims/food_doodle.png"),
              SizedBox(height: 10,),
              Image.asset("assets/anims/food_doodle.png"),
              
            ],
          ),
          Center(
            child: Container(
              height: 200,
              width: 300,
              child: Image.asset("assets/anims/cravers.png")),
          )
        ],
      );
  } 
}