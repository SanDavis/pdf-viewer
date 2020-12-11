import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';

class AdmobProvider {
  // AdmobInterstitial interstitialAd;

  Widget admodBanner() {
    return AdmobBanner(
      adUnitId: 'ca-app-pub-3940256099942544/6300978111',
      adSize: AdmobBannerSize.FULL_BANNER,
    );
  }

  AdmobInterstitial admodInterstitial() {
    return AdmobInterstitial(
      adUnitId: 'ca-app-pub-3940256099942544/1033173712',
      // listener: (AdmobAdEvent event, Map<String, dynamic> args) {
      //   // if (event == AdmobAdEvent.closed) this.admodInterstitial().load();
      //   // handleEvent(event, args, 'Interstitial');
      // },
    ); //'ca-app-pub-3940256099942544/1033173712'
  }
}
