import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plum_chef/components/Images.dart';
import 'package:plum_chef/components/colors.dart';
import 'package:plum_chef/screens/foods/trending_foods.dart';
import 'package:plum_chef/screens/home/home.dart';

class ViewAll extends StatelessWidget {
  const ViewAll({super.key});

  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: CustomScrollView(
        slivers: [
           FrostedAppBar(title: 'Watch Now', actions: []),
           SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 4,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: spicylist.length,
              itemBuilder: (BuildContext ctx, index) {
                return GestureDetector(onTap: (){
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
                              );
              }),
            ),
           )
        ],
      ),
    );
  }
}