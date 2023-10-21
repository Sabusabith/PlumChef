import 'package:get/get.dart';
import 'package:plum_chef/components/SharedData.dart';
import 'package:plum_chef/screens/Home/home.dart';
import 'package:plum_chef/screens/home/mainHome.dart';
import 'package:plum_chef/screens/onboarding/onboarding.dart';

class SplashController extends GetxController{

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    timerFn();
  }
  
  timerFn()async{
  var token =  await getSavedObject("token");
  print(token);
  if (token != null) {
     return Future.delayed(Duration(seconds: 3)).then((value) => Get.to(MainHome()));
  }else{
   return Future.delayed(Duration(seconds: 3)).then((value) => Get.to(OnboardingPage()));

  }
  }
}