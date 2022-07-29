import 'package:cafenow_flutter_app/app/root/binding/root_page_binding.dart';
import 'package:cafenow_flutter_app/app/root/ui/root_page.dart';
import 'package:cafenow_flutter_app/app/splash/binding/splash_page_binding.dart';
import 'package:cafenow_flutter_app/app/splash/ui/splash_page.dart';
import 'package:cafenow_flutter_app/app/login/binding/login_page_binding.dart';
import 'package:cafenow_flutter_app/app/login/ui/login_page.dart';
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
      name: AppRoutes.loginPage,
      page: () => const LoginPage(),
      binding: LoginPageBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.rootPage,
      page: () => const RootPage(),
      bindings: [
        RootPageBinding(),
      ],
      transition: Transition.fadeIn,
    ),
  ];
}
