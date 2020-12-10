import 'package:flutter/material.dart';
import 'package:flutter_document_picker/flutter_document_picker.dart';
import 'package:pdf_viewer/src/pages/pdf_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        ));
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
