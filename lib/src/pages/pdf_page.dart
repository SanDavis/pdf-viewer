import 'package:flutter/material.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';

class PdfPage extends StatefulWidget {
  final String pdfPath;

  const PdfPage({Key key, this.pdfPath}) : super(key: key);

  @override
  _PdfPageState createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  @override
  Widget build(BuildContext context) {
    return PDFViewerScaffold(
      path: widget.pdfPath,
    );
  }
}
