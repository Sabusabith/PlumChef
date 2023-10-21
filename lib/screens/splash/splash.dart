import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plum_chef/Controllers/SplashController.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(backgroundColor: Color(0xff171717),
    body: GetBuilder<SplashController>(init:  SplashController(),builder: (controller){
      return Container(width: size.width,height: size.height,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("lib/Assets/Images/spoon.jpeg"),fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Expanded(child: Align(alignment: Alignment(0, .78),child: Container(child: Image(image: AssetImage("lib/Assets/Images/logos.png"))))),
        ],
      ),);
    })
    ,);
  }
}