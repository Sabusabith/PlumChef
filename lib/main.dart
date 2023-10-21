import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:plum_chef/Screens/splash/splash.dart';

void main(List<String> args) {
  runApp(GetMaterialApp(home: MyApp(),debugShowCheckedModeBanner: false,));
}
class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Splash();
  }
}