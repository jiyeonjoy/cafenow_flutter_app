import 'package:cafenow_flutter_app/app/splash/controller/splash_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cafenow_flutter_app/app/common/config/app_colors.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashPageController> {
    static AppColors get color => AppColors();
  const SplashPage({Key? key}) : super(key: key);
  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.gray400,
      body:  Center(
      child: SvgPicture.asset("assets/images/icons/logo.svg", width: 150,height: 150,),
    )
    );
  }
}
