import 'package:flutter/material.dart';
import 'package:flutter_document_picker/flutter_document_picker.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _localPath =
      '/data/user/0/com.example.pdf_viewer/cache/un_plan_para_tres_docx.pdf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Viewer'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            child: PDFView(
              filePath: _localPath,
              nightMode: true,
            ),
          ),
        ],
      ),
      // body: Container(
      //     child: Center(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: <Widget>[
      //       RaisedButton(
      //         onPressed: _abrirPdfLocal,
      //         child: Text('Open local PDF'),
      //       ),
      //       RaisedButton(
      //         onPressed: null,
      //         child: Text('Open PDF'),
      //       ),
      //     ],
      //   ),
      // )),
    );
  }

  void _abrirPdfLocal() async {
    print(' HolaaaaaaaaaaaaaaaWWWWWWWW');
    //Without parameters:
    final _localPath = await FlutterDocumentPicker.openDocument();

    print(_localPath + ' Holaaaaaaaaaaaaaaa');
    setState(() {});
  }
}
