import 'package:flutter_applovin_max/flutter_applovin_max.dart';

bool isInterstitialVideoAvailable = false;

void initState() {
  FlutterApplovinMax.initInterstitialAd('2a5f34997ddf7ed9');
}

void listener(AppLovinAdListener event) {
  // ignore: avoid_print
  print(event);
  if (event == AppLovinAdListener.onUserRewarded) {
    // ignore: avoid_print
    print('👍get reward');
  }
}

void showinterstitialads() async {
  isInterstitialVideoAvailable =
      (await FlutterApplovinMax.isInterstitialLoaded((listener) => null))!;
  if (isInterstitialVideoAvailable) {
    FlutterApplovinMax.showInterstitialVideo(
        (AppLovinAdListener? event) => listener(event!));
  }
}


//****************************************************************************************************************/

// import 'dart:math';
// import 'package:applovin_max/applovin_max.dart';

// Future<void> fun() async {
//   Map? sdkConfiguration = await AppLovinMAX.initialize(
//       "LqN_GeXRJqZom_3gmr9nBqTCvflG7OQ1FHDa5SVUzqwqrftPrdqxnaZHd6sVP2V6yUaCpKNMTVZnbRTBy5tsNS");

//   final String _interstitial_ad_unit_id = "2a5f34997ddf7ed9";

//   var _interstitialRetryAttempt = 0;

//   void initializeInterstitialAds() {
//     AppLovinMAX.setInterstitialListener(InterstitialListener(
//       onAdLoadedCallback: (ad) {
//         // Interstitial ad is ready to be shown. AppLovinMAX.isInterstitialReady(_interstitial_ad_unit_id) will now return 'true'
//         print('Interstitial ad loaded from ' + ad.networkName);

//         // Reset retry attempt
//         _interstitialRetryAttempt = 0;
//       },
//       onAdLoadFailedCallback: (adUnitId, error) {
//         // Interstitial ad failed to load
//         // We recommend retrying with exponentially higher delays up to a maximum delay (in this case 64 seconds)
//         _interstitialRetryAttempt = _interstitialRetryAttempt + 1;

//         int retryDelay = pow(2, min(6, _interstitialRetryAttempt)).toInt();

//         print('Interstitial ad failed to load with code ' +
//             error.code.toString() +
//             ' - retrying in ' +
//             retryDelay.toString() +
//             's');

//         Future.delayed(Duration(milliseconds: retryDelay * 1000), () {
//           AppLovinMAX.loadInterstitial(_interstitial_ad_unit_id);
//         });
//       },
//       onAdDisplayedCallback: (ad) {},
//       onAdDisplayFailedCallback: (ad, error) {},
//       onAdClickedCallback: (ad) {},
//       onAdHiddenCallback: (ad) {},
//     ));

//     // Load the first interstitial
//     AppLovinMAX.loadInterstitial(_interstitial_ad_unit_id);
//     AppLovinMAX.showInterstitial(_interstitial_ad_unit_id);
//   }
// }
