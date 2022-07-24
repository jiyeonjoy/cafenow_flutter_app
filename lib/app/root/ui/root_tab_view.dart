import 'package:cafenow_flutter_app/app/home/ui/home_page.dart';
import 'package:cafenow_flutter_app/app/my/ui/my_page.dart';
import 'package:cafenow_flutter_app/app/registration/ui/registration_page.dart';
import 'package:cafenow_flutter_app/app/root/controller/root_page_controller.dart';
import 'package:flutter/material.dart';

class RootTabView extends StatelessWidget {
  final RootTab rootTab;
  const RootTabView(this.rootTab, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch(rootTab) {
      case RootTab.home:
        return const HomePage();
      case RootTab.registration:
        return const RegistrationPage();
      case RootTab.my:
        return const MyPage();
    }
  }
}
