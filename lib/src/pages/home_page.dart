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
      body: Container(
          child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              onPressed: () => _abrirPdfLocal(context),
              child: Text('Open local PDF'),
            ),
            RaisedButton(
              onPressed: null,
              child: Text('Open PDF'),
            ),
          ],
        ),
      )),
    );
  }

  void _abrirPdfLocal(BuildContext context) async {
    //Without parameters:
    final _localPath = await FlutterDocumentPicker.openDocument();

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PdfPage(_localPath)),
    );
  }
}
