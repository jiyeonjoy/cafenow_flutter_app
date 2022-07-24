import 'package:cafenow_flutter_app/app/home/controller/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
      init: controller,
      builder: (_) {
        return Container(
          color: Colors.purple,
          child: const Center(
            child: Text(
              'Home Page',
            ),
          ),
        );
      },
    );
  }
}
