import 'package:geolocator/geolocator.dart';

class LocationUtils {
  static Future<Position?> determinePosition() async {
    final isEnabled = await checkServiceEnabled();
    final hasPermission = await checkPermissionGranted();

    if (isEnabled && hasPermission) {
      return await Geolocator.getCurrentPosition();
    }

    return null;
  }

  static Future<bool> checkServiceEnabled() async {
    bool serviceEnabled;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return false;
    }

    return true;
  }

  static Future<bool> checkPermissionGranted() async {
    LocationPermission permission;

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return false;
    }

    return true;
  }
}
