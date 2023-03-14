import 'dart:io';
import 'package:curriculo/constantes.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Publicacao extends StatefulWidget {
  final String pdfPath;
  const Publicacao({Key? key, required this.pdfPath}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PublicacaoState createState() => _PublicacaoState();
}

class _PublicacaoState extends State<Publicacao>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  late final SfPdfViewer _pdfViewer;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 12, vsync: this);
    _pdfViewer = SfPdfViewer.file(File(widget.pdfPath));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kbackgroundColor,
        shadowColor: kbackgroundColorSec,
        bottom: TabBar(
          labelPadding: EdgeInsets.all(10),
          labelColor: Colors.black,
          controller: _tabController,
          tabs: const [
            Tab(
              text: '2005',
              icon: Icon(Icons.picture_as_pdf),
            ),
            Tab(
              text: '2006',
              icon: Icon(Icons.picture_as_pdf),
            ),
            Tab(
              text: '2007',
              icon: Icon(Icons.picture_as_pdf),
            ),
            Tab(
              text: '2008',
              icon: Icon(Icons.picture_as_pdf),
            ),
            Tab(
              text: '2009',
              icon: Icon(Icons.picture_as_pdf),
            ),
            Tab(
              text: '2010',
              icon: Icon(Icons.picture_as_pdf),
            ),
            Tab(
              text: '2011',
              icon: Icon(Icons.picture_as_pdf),
            ),
            Tab(
              text: '2012',
              icon: Icon(Icons.picture_as_pdf),
            ),
            Tab(
              text: '2013',
              icon: Icon(Icons.picture_as_pdf),
            ),
            Tab(
              text: '2014',
              icon: Icon(Icons.picture_as_pdf),
            ),
            Tab(
              text: '2015',
              icon: Icon(Icons.picture_as_pdf),
            ),
            Tab(
              text: '2016',
              icon: Icon(Icons.picture_as_pdf),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildTableOfContents(),
          _pdfViewer,
        ],
      ),
    );
  }

  Widget _buildTableOfContents() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: const Text('Table of contents goes here'),
    );
  }
}
