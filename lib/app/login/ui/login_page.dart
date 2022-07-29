import 'package:cafenow_flutter_app/app/login/controller/login_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginPageController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent, title: Text("Login")),
      backgroundColor: Color.fromARGB(255, 127, 255, 7),
      body: Center(
        child: Text(
          'Login Page',
        ),
      ),
    );
  }
}
