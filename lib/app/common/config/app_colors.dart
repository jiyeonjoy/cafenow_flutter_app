import 'package:flutter/material.dart';

class AppColors {
  static final AppColors _instance = AppColors._internal();

  factory AppColors() => _instance;

  AppColors._internal();

  final Color transparent = Colors.transparent;
  final Color black = Colors.black;
  final Color white = Colors.white;
  final Color gray100 = Color(0xffEEEEEE);
  final Color gray200 = Color(0xffCCCCCC);
  final Color gray300 = Color(0xff999999);
  final Color gray400 = Color(0xff6666666);
  final Color gray600 = Color(0xff3333333);
  final Color gray700 = Color(0xff1111111);
  final Color main100 = Color(0xffB2FF34);
  final Color deisionYes = Color(0xff52CEFA);
  final Color deisionNo = Color(0xffF16464);
}
