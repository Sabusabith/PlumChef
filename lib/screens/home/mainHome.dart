import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:plum_chef/Controllers/homeController.dart';
import 'package:plum_chef/components/colors.dart';
import 'package:plum_chef/screens/Reels/ReelPage.dart';
import 'package:plum_chef/screens/home/home.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainHome extends StatelessWidget {
   MainHome({super.key});
   HomeController homeController = Get.put(HomeController());
  final List<Widget> _pages = [
 Home(),
 ReelsPage(),

      Container(color: Colors.blue,),
        Container(color: Colors.blue,),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: backgroundColor,
    bottomNavigationBar: Obx(()=>
          SalomonBottomBar(
            unselectedItemColor: Colors.grey.shade400,
          currentIndex: homeController.currentIndex.value,
          onTap: (index) {
         
              homeController.currentIndex.value = index;
            
          },
          items: [
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              selectedColor: Colors.deepPurple[300],
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.video_collection_sharp),
              title: Text('Reels'),
              selectedColor: Colors.deepPurple[300]
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              title: Text('Favorite'),
              selectedColor: Colors.deepPurple[300]
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.person_pin),
              title: Text('Profile'),
              selectedColor: Colors.deepPurple[300]
            ),
          ],
             ),
       ),
       body: Obx(()=> _pages[homeController.currentIndex.value]),
    );
  }
}