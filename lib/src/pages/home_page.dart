import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_document_picker/flutter_document_picker.dart';
import 'package:pdf_viewer/src/pages/pdf_page.dart';
import 'package:pdf_viewer/src/providers/admob_provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AdmobProvider admobProvider = AdmobProvider();
  AdmobInterstitial _interstitialAd;
  AdmobBanner _admobBanner;

  @override
  void initState() {
    super.initState();

    _admobBanner = admobProvider.admodBanner();
    _interstitialAd = admobProvider.admodInterstitial();
    _interstitialAd.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Viewer'),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => _abrirPdfLocal(context),
          child: Text('Open PDF'),
        ),
      ),
      // bottomNavigationBar: Container(child: admodBanner()),
      bottomSheet: _admobBanner,
    );
  }

  void _abrirPdfLocal(BuildContext context) async {
    _interstitialAd.load();
    if (await _interstitialAd.isLoaded) {
      _interstitialAd.show();
    }

    //Without parameters:
    final localPath = await FlutterDocumentPicker.openDocument();

    // Si no se selecciona ningun archivo
    if (localPath == null) {
      return;
    }

    //Si el archivo es un pdf
    if (localPath.isNotEmpty && localPath.endsWith('.pdf')) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PdfPage(
                  pdfPath: localPath,
                )),
      );
      // admobProvider.admodIntersticial().show();
    } else {
      //Si el archivo no es un pdf, se lanza un mensaje de alerta
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Invalid file'),
            content: Text('Sorry, the file extension is invalid'),
            actions: [
              FlatButton(
                child: Text('OK'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          );
        },
      );
    }
  }
}
