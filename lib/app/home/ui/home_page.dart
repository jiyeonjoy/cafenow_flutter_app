import 'package:cafenow_flutter_app/app/home/controller/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.red,
        title: const SizedBox(
          height: 20,
          child: Text("LOGO"),
        ),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Obx(() => Text("${Get.find<HomePageController>().count.value}")),
            RaisedButton(
                child: Text("increase"),
                onPressed: () {
                  Get.find<HomePageController>().add();
                }),
            RaisedButton(
                child: Obx(()=>Text(Get.find<HomePageController>().isAlert.value ? "add minus" : "decrease")),
                onPressed: () {
                  Get.find<HomePageController>().decrease();
                }),
          ],
        ),
      ),
    );
  }
}
