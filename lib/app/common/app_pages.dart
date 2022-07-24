import 'package:cafenow_flutter_app/app/home/binding/home_page_binding.dart';
import 'package:cafenow_flutter_app/app/my/binding/my_page_binding.dart';
import 'package:cafenow_flutter_app/app/registration/binding/registration_page_binding.dart';
import 'package:cafenow_flutter_app/app/root/binding/root_page_binding.dart';
import 'package:cafenow_flutter_app/app/root/ui/root_page.dart';
import 'package:cafenow_flutter_app/app/splash/binding/splash_page_binding.dart';
import 'package:cafenow_flutter_app/app/splash/ui/splash_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

abstract class AppPages {
  static const initialPage = AppRoutes.splashPage;

  static final pages = [
    GetPage(
      name: AppRoutes.splashPage,
      page: () => const SplashPage(),
      binding: SplashPageBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.rootPage,
      page: () => const RootPage(),
      bindings: [
        RootPageBinding(),
        HomePageBinding(),
        RegistrationPageBinding(),
        MyPageBinding(),
      ],
      transition: Transition.fadeIn,
    ),
  ];
}
