
import 'dart:math';


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plum_chef/screens/Reels/ReelPlayer.dart';
import 'package:preload_page_view/preload_page_view.dart';

class ReelsPage extends StatefulWidget{




  @override
  State<ReelsPage> createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {


  late PreloadPageController pageController;

  int scrolldindex = 0;  
  final List<String> videos = [
"https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
"https://www.youtube.com/shorts/B-s71n0dHUk"

  ];
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Colors.black,
      body: PreloadPageView.builder(physics: BouncingScrollPhysics(),
        preloadPagesCount: 10,
        
        onPageChanged: (value){
          setState(() {
            scrolldindex = value;
          });
        },
        scrollDirection: Axis.vertical,
        itemCount: videos.length,
      
        itemBuilder: (context, index) {
           final  reels = videos[index];
          // You can preload and build your pages here
          return ReelsPlayer(
            url: reels,
          
            currentindex: index,
            scrolldindex: scrolldindex,
          );
        },
      ),
    );
  }
}
