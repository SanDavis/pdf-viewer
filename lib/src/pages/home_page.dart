import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_document_picker/flutter_document_picker.dart';
import 'package:pdf_viewer/src/pages/pdf_page.dart';
import 'package:pdf_viewer/src/providers/admob_provider.dart';
import 'package:pdf_viewer/src/widgets/clicky_button.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Viewer'),
        centerTitle: true,
      ),
      body: Center(
        child: ClickyButton(
          child: Text(
            'Open PDF',
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
          onPressed: () => _abrirPdfLocal(context),
        ),
      ),
      bottomSheet: _admobBanner,
      backgroundColor: Colors.blueAccent[700],
    );
  }

  void _abrirPdfLocal(BuildContext context) async {
    //Without parameters:
    final localPath = await FlutterDocumentPicker.openDocument();

    // Si no se selecciona ningun archivo
    if (localPath == null) {
      return;
    }

    //Si el archivo es un pdf
    if (localPath.isNotEmpty && localPath.endsWith('.pdf')) {
      _interstitialAd.load();
      if (await _interstitialAd.isLoaded) {
        _interstitialAd.show();
      }

      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PdfPage(
                  pdfPath: localPath,
                )),
      );
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
