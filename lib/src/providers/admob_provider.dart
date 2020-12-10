// import 'package:firebase_admob/firebase_admob.dart';

// class AdmobProvider {
//   InterstitialAd myInterstitial;

//   static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
//     keywords: [
//       'Youtube',
//       'TikTok',
//       'facebook',
//       'Telegram',
//       'trabajo',
//       'empleo',
//       'cursos',
//       'ingles'
//     ],
//     //contentUrl: 'https://flutter.io',
//     childDirected: true,
//     testDevices: [], // Android emulators are considered test devices
//   );

//   AdmobProvider() {
//     myInterstitial = _crearInterstitialAd();
//   }

//   InterstitialAd _crearInterstitialAd() {
//     return InterstitialAd(
//       /**
//        * HAY QUE REEMPLAZAR EL BLOQUE DE ANUNCIOS
//        * 'ca-app-pub-4380324633728780/5782011424' POR InterstitialAd.testAdUnitId
//        * CUANDO SE ESTA DESARROLLANDO
//        */
//       adUnitId:
//           'ca-app-pub-4380324633728780/5782011424', //, //id del bloque de anuncios InterstitialAd.testAdUnitId
//       targetingInfo: targetingInfo,
//       listener: (MobileAdEvent event) {
//         if (event == MobileAdEvent.closed) {
//           this.myInterstitial.dispose();
//         }
//       },
//     );
//   }
// }
