// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:plum_chef/Controllers/smoothPageController.dart';
import 'package:plum_chef/components/SharedData.dart';
import 'package:plum_chef/components/colors.dart';
import 'package:plum_chef/screens/home/home.dart';
import 'package:plum_chef/screens/onboarding/page_1.dart';
import 'package:plum_chef/screens/onboarding/page_2.dart';
import 'package:plum_chef/screens/onboarding/page_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnboardingPage extends StatelessWidget {
SmoothpageController smoothpageController = Get.put(SmoothpageController());
  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
      
        children: [
          // page view
          Container(
            height: size.height,width:size.width ,
            child: PageView(
              onPageChanged:(index){
smoothpageController.onPageChanges(index);
              },
              controller: smoothpageController.controller,
              children: const [
                Page1(),
                Page2(),
                Page3(),
           
              ],
            ),
          ),

          // dot indicators
          Align(alignment: Alignment(0, .85),
            child: Container(
              child: SmoothPageIndicator(
                controller: smoothpageController.controller,
                count: 3,
                effect: JumpingDotEffect(

                  activeDotColor: Color.fromARGB(255, 143, 94, 195),
                  dotColor: const Color.fromARGB(255, 191, 190, 190),
                  dotHeight: 15,
                  dotWidth: 15,
                  spacing: 16,
                  //verticalOffset: 50,
                  jumpScale: 2,
                ),
              ),
            ),
          ),
         Obx(()=>
            smoothpageController.show.value? Align(alignment: Alignment(.90, .86),
              child: GestureDetector(onTap: (){
                saveObject("token", "token");
                Get.to(Home());
              },
                child: Container(width: 100,height: 36,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                child: Center(child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Text("Start",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    Icon(Icons.arrow_right,color: Colors.black,size: 30,)
                  ],
                )),),
              ),
            ):SizedBox(),
         )
        ],
      ),
    );
  }
}