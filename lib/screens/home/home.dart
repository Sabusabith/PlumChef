
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plum_chef/Controllers/homeController.dart';
import 'package:plum_chef/components/Images.dart';
import 'package:plum_chef/components/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:plum_chef/screens/Foods/trending_foods.dart';
import 'package:plum_chef/screens/foods/viewAll.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';


class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
       
      backgroundColor: backgroundColor,
      body: CustomScrollView(

        slivers: [
          FrostedAppBar(title: 'Watch Now', actions: []),
          SliverFillRemaining(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlayAnimationDuration: Duration(seconds: 2),
                    height: 160,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    autoPlay: true,
                  ),
                  items: imageList
                      .map((e) => Container(
                            width: size.width,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(e),
                                  fit: BoxFit.cover,
                                )),
                          ))
                      .toList(),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Trending",
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      GestureDetector(onTap: (){
                        Get.to(ViewAll());
                      },child: Container(margin: EdgeInsets.symmetric(horizontal: 10),child: Center(child: Text("View All",style: TextStyle(color: Colors.grey.shade400),)),width: 80,height: 30,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:Color.fromARGB(255, 39, 38, 38) ),))
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: size.width,
                  height: 220,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount:3,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            GestureDetector(onTap: (){
                              Get.to(TrendingFoods(
                                description: spicylist[index].description,imageUrl: spicylist[index].imageUrl,steps: spicylist[index].steps,ingredients: spicylist[index].ingredients,title: spicylist[index].title,
                              ));
                            },
                              child: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage(spicylist[index].imageUrl),fit: BoxFit.cover),borderRadius: BorderRadius.circular(15)),
                                width: 160,
                                height: 200,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Align(alignment: Alignment.bottomLeft,
                                    child: Text(spicylist[index].title,style: GoogleFonts.raleway(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w500
                                    ),overflow: TextOverflow.ellipsis,),
                                  ),
                                ),
                               
                                                     
                              ),
                            )
                          ],
                        );
                      }),
                ),
                SizedBox(height: 20,),
                 Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Spicy",
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      GestureDetector(onTap: (){
                        Get.to(ViewAll());
                      },child: Container(margin: EdgeInsets.symmetric(horizontal: 10),child: Center(child: Text("View All",style: TextStyle(color: Colors.grey.shade400),)),width: 80,height: 30,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:Color.fromARGB(255, 39, 38, 38) ),))
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Expanded(
                  child: Container(
                    width: size.width,
                    height: 220,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount:3,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              const SizedBox(
                                width: 15,
                              ),
                              GestureDetector(onTap: (){
                                Get.to(TrendingFoods(
                                  description: spicylist[index].description,imageUrl: spicylist[index].imageUrl,steps: spicylist[index].steps,ingredients: spicylist[index].ingredients,title: spicylist[index].title,
                                ));
                              },
                                child: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage(spicylist[index].imageUrl),fit: BoxFit.cover),borderRadius: BorderRadius.circular(15)),
                                  width: 160,
                                  height: 200,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Align(alignment: Alignment.bottomLeft,
                                      child: Text(spicylist[index].title,style: GoogleFonts.raleway(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w500
                                      ),overflow: TextOverflow.ellipsis,),
                                    ),
                                  ),
                                 
                                                       
                                ),
                              )
                            ],
                          );
                        }),
                  ),
                ),
               
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FrostedAppBar extends StatelessWidget {
  final String title;
  final List<Widget> actions;
  final bool showLeading;

  const FrostedAppBar(
      {required this.title, required this.actions, this.showLeading = false});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: const Icon(
        Icons.menu,
        color: Colors.white,
      ),
      expandedHeight: 60,
      automaticallyImplyLeading: showLeading,
      backgroundColor: Colors.transparent,
      pinned: true,
      floating: false,
      centerTitle: true,
      snap: false,
      actions: actions ?? [],
      flexibleSpace: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(top: 20),
              title: Image.asset(
                "lib/Assets/Images/logos.png",
                height: 40,
              )),
        ),
      ),
    );
  }
}
