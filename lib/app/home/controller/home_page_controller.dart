import 'package:cafenow_flutter_app/app/common/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  final count = 0.obs;
  final isAlert = false.obs;
  static HomePageController get to => Get.find();
  late Worker worker;
  @override
  void onReady() {
    super.onReady();
    performAppInitialization();
  }

 

  void performAppInitialization() async {
    await Future.delayed(const Duration(milliseconds: 200));
    Get.offNamed(AppRoutes.homePage);
  }

  void add() {
     count.value++;
    update();
    if (count.value >= 0){
      isAlert.value = false;
      update();
    } 
   
  }

  void decrease() {
      count.value--;
      update();
      if (count.value < 0){
      isAlert.value = true;
      update();
    } 
   
  }
}
