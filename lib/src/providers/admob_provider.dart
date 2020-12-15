import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';

class AdmobProvider {
  Widget admodBanner() {
    return AdmobBanner(
      adUnitId:
          'ca-app-pub-4380324633728780/6579619550', //ca-app-pub-3940256099942544/6300978111
      adSize: AdmobBannerSize.FULL_BANNER,
    );
  }

  AdmobInterstitial admodInterstitial() {
    return AdmobInterstitial(
      adUnitId:
          'ca-app-pub-4380324633728780/4276889840', //ca-app-pub-3940256099942544/1033173712
    ); //'ca-app-pub-3940256099942544/1033173712'
  }
}
