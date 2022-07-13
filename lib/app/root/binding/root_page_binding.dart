import 'package:cafenow_flutter_app/app/root/controller/root_page_controller.dart';
import 'package:get/get.dart';

class RootPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RootPageController());
  }
}
