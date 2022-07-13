import 'package:cafenow_flutter_app/app/common/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CafeNowApp extends StatefulWidget {
  const CafeNowApp({Key? key}) : super(key: key);

  @override
  State<CafeNowApp> createState() => _CafeNowAppState();
}

class _CafeNowAppState extends State<CafeNowApp> {
  @override
  void initState() {
    WidgetsFlutterBinding.ensureInitialized();

    /// 세로 모드 고정
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: AppPages.initialPage,
      getPages: AppPages.pages,
      defaultTransition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 200),
    );
  }
}
