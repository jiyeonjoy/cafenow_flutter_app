import 'package:cafenow_flutter_app/app/common/config/r.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RootPageController extends GetxController {
  static RootPageController get to => Get.find();

  RootTab currentTab = RootTab.home;

  void changeTab(int index) {
    currentTab = RootTab.from(index);
    update();
  }
}

enum RootTab {
  home(0),
  registration(1),
  my(2);

  final int id;
  const RootTab(this.id);

  static RootTab from(int id) {
    for (final value in RootTab.values) {
      if (value.id == id) {
        return value;
      }
    }
    return RootTab.home;
  }
}

extension RootTabExt on RootTab {
  Widget get icon {
    switch (this) {
      case RootTab.home:
        return Icon(
          Icons.home,
          color: R.color.black.withOpacity(0.5),
          size: 24.0,
        );
      case RootTab.registration:
        return Icon(
          Icons.app_registration,
          color: R.color.black.withOpacity(0.5),
          size: 24.0,
        );
      case RootTab.my:
        return Icon(
          Icons.info,
          color: R.color.black.withOpacity(0.5),
          size: 24.0,
        );
    }
  }

  Widget get selectedIcon {
    switch (this) {
      case RootTab.home:
        return Icon(
          Icons.home,
          color: R.color.black,
          size: 24.0,
        );
      case RootTab.registration:
        return Icon(
          Icons.app_registration,
          color: R.color.black,
          size: 24.0,
        );
      case RootTab.my:
        return Icon(
          Icons.info,
          color: R.color.black,
          size: 24.0,
        );
    }
  }

  String get title {
    switch (this) {
      case RootTab.home:
        return '홈';
      case RootTab.registration:
        return '등록';
      case RootTab.my:
        return '마이';
    }
  }
}
