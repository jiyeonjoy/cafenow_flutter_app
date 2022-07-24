import 'package:cafenow_flutter_app/app/common/config/r.dart';
import 'package:cafenow_flutter_app/app/common/logger.dart';
import 'package:cafenow_flutter_app/app/common/ui/common_snackbar.dart';
import 'package:cafenow_flutter_app/utils/location_utils.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  static HomePageController get to => Get.find();
  Position? position;

  @override
  void onInit() {
    super.onInit();
    getPosition();
  }

  void getPosition() async {
    try {
      position = await LocationUtils.determinePosition();
      update();
      if (position == null) {
        CommonSnackBar.show(R.string.needLocationPermission);
        return;
      }
    } catch (e) {
      logger.d(e);
    }
  }
}
