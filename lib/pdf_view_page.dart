import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PDFViewerPage extends StatefulWidget {
  const PDFViewerPage({super.key});

  @override
  State<PDFViewerPage> createState() => _PDFViewerPageState();
}

class _PDFViewerPageState extends State<PDFViewerPage> {

  final String _localFile = 'assets/BritannicaAlmanac2010.pdf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Viewer'),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      body: _localFile !=null ? PDFView(
        filePath: _localFile,
      ):const Center(child: CircularProgressIndicator()),
    );
  }
}