import 'package:foodyman/infrastructure/services/tr_keys.dart';

import 'infrastructure/services/enums.dart';

abstract class AppConstants {
  AppConstants._();

  /// api urls
  static const String baseUrl = 'https://api.foodyman.org/';
  static const String drawingBaseUrl = 'https://api.openrouteservice.org';
  static const String googleApiKey = 'Your Map key';
  static const String adminPageUrl = 'https://admin.foodyman.org';
  static const String webUrl = 'https://foodyman.org';
  static const String firebaseWebKey =
      'AIzaSyDraEPokcqncELQIoXO2Phy0YZUUIaKqMI';
  static const String uriPrefix = 'https://foodyman.page.link';
  static const String routingKey =
      '5b3ce3597851110001cf62480384c1db92764d1b8959761ea2510ac8';
  static const String androidPackageName = 'com.foodyman';
  static const String iosPackageName = 'com.foodyman.customer';
  static const bool isDemo = true;
  static const bool isPhoneFirebase = true;
  static const int scheduleInterval = 60;
  static const SignUpType signUpType = SignUpType.email;


  /// PayFast
  static const String passphrase = 'jt7NOE43FZPn';
  static const String merchantId = '10000100';
  static const String merchantKey = '46f0cd694581a';

  static const String demoUserLogin = 'user@nadhir.com';
  static const String demoUserPassword = 'nadhir123';

  /// locales
  static const String localeCodeEn = 'en';
  static const String chatGpt =
      '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';

  /// auth phone fields
  static const bool isNumberLengthAlwaysSame = true;
  static const String countryCodeISO = 'UZ';
  static const bool showFlag = true;
  static const bool showArrowIcon = true;

  /// location
  static const double demoLatitude = 41.304223;
  static const double demoLongitude = 69.2348277;
  static const double pinLoadingMin = 0.116666667;
  static const double pinLoadingMax = 0.611111111;

  static const Duration timeRefresh = Duration(seconds: 30);

  static const List infoImage = [
    "assets/images/save.png",
    "assets/images/delivery.png",
    "assets/images/fast.png",
    "assets/images/set.png",
  ];

  static const List infoTitle = [
    TrKeys.saveTime,
    TrKeys.deliveryRestriction,
    TrKeys.fast,
    TrKeys.set,
  ];

  static const payLater = [
    "progress",
    "canceled",
    "rejected",
  ];
  static const genderList = [
    "male",
    "female",
  ];
}


