class AppTexts {
  static final AppTexts _instance = AppTexts._internal();

  factory AppTexts() => _instance;

  AppTexts._internal();

  final String needLocationPermission = '위치정보 권한 설정이 필요합니다.';
}
