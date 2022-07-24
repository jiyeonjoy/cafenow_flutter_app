import 'package:cafenow_flutter_app/app/registration/controller/registration_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationPage extends GetView<RegistrationPageController> {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text(
          'Registration Page',
        ),
      ),
    );
  }
}
