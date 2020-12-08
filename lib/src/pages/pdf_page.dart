import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PdfPage extends StatelessWidget {
  PdfPage(this._path);

  final String _path;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PDFView(
        filePath: this._path,
      ),
    );
  }
}
