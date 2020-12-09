import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
// import 'package:native_pdf_view/native_pdf_view.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';

class PdfPage extends StatefulWidget {
  PdfPage(_path) {
    pdfPath = _path;
  }

  static String pdfPath =
      '/data/user/0/com.example.pdf_viewer/cache/un_plan_para_tres_docx.pdf';

  @override
  _PdfPageState createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  @override
  Widget build(BuildContext context) {
    print('INICIANDOOOOOOOOOOOOO');

    // return Scaffold(
    //   body: PDFView(
    //     filePath: PdfPage.pdfPath,
    //   ),
    // );

    return PDFViewerScaffold(
        // appBar: AppBar(
        //   title: Text("Document"),
        //   actions: <Widget>[
        //     IconButton(
        //       icon: Icon(Icons.share),
        //       onPressed: () {},
        //     ),
        //   ],
        // ),
        path: PdfPage.pdfPath);
  }
}
