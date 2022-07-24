import 'package:cafenow_flutter_app/app/my/controller/my_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyPage extends GetView<MyPageController> {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: const Center(
        child: Text(
          'My Page',
        ),
      ),
    );
  }
}
