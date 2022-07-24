import 'package:cafenow_flutter_app/app/registration/controller/registration_page_controller.dart';
import 'package:get/get.dart';

class RegistrationPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationPageController());
  }
}
