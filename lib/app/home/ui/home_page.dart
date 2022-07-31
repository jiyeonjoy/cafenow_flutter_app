import 'package:cafenow_flutter_app/app/common/globals.dart';
import 'package:cafenow_flutter_app/app/home/controller/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakaomap_webview/kakaomap_webview.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
      init: controller,
      builder: (_) {
        if (_.position != null) {
          return KakaoMapView(
              width: double.infinity,
              height: double.infinity,
              kakaoMapKey: KAKAO_MAP_KEY,
              lat: _.position!.latitude,
              lng: _.position!.longitude,
              showMapTypeControl: true,
              showZoomControl: true,
              onTapMarker: (message) async {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Marker is clicked')));
              });
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
