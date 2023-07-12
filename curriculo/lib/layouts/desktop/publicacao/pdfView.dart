// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PdfViewer extends StatelessWidget {
  final String pdfPath;

  const PdfViewer({super.key, required this.pdfPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Visualizador de PDF'),
      ),
      body: PDFView(
        filePath: pdfPath,
        swipeHorizontal: true,
        autoSpacing: false,
        pageSnap: true,
        defaultPage: 0,
        fitPolicy: FitPolicy.BOTH,
        preventLinkNavigation: false,
        nightMode: false,
        onError: (e) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Erro no PDF '),
            ),
          );
          (e);
        },
        onPageError: (page, e) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Erro Inesperado no carregamento da pagina'),
            ),
          );
        },
        onViewCreated: (PDFViewController controller) {},
      ),
    );
  }
}
