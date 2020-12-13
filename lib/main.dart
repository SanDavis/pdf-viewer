import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:pdf_viewer/src/pages/home_page.dart';

void main() {
  final String appId = 'com.example.pdf_viewer';

  // Initialize without device test ids
  Admob.initialize(appId);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PDF Viewer',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: MaterialColor(0xFFDC0101, {
          50: Color.fromRGBO(4, 131, 184, .1),
          100: Color.fromRGBO(4, 131, 184, .2),
          200: Color.fromRGBO(4, 131, 184, .3),
          300: Color.fromRGBO(4, 131, 184, .4),
          400: Color.fromRGBO(4, 131, 184, .5),
          500: Color.fromRGBO(4, 131, 184, .6),
          600: Color.fromRGBO(4, 131, 184, .7),
          700: Color.fromRGBO(4, 131, 184, .8),
          800: Color.fromRGBO(4, 131, 184, .9),
          900: Color.fromRGBO(4, 131, 184, 1),
        }),
        // accentColor: Colors.white,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
