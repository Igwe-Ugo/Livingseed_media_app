import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class ReadBookPage extends StatefulWidget {
  final String bookPath;
  const ReadBookPage({super.key, required this.bookPath});

  @override
  State<ReadBookPage> createState() => _ReadBookPageState();
}

class _ReadBookPageState extends State<ReadBookPage> {
  bool pdfReady = false;
  int totalPages = 0;
  int currentPage = 0;
  late PDFViewController pdfViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PDFView(
            filePath: widget.bookPath,
            autoSpacing: true,
            enableSwipe: true,
            nightMode: true,
            swipeHorizontal: true,
            onError: (e) {
              debugPrint(e);
            },
            onRender: (pages) {
              setState(() {
                totalPages = pages!;
                pdfReady = true;
              });
            },
            onViewCreated: (PDFViewController vc) {
              pdfViewController = vc;
            },
            onPageChanged: (page, total) {
              setState(() {});
            },
            onPageError: (page, error) {
              debugPrint(page as String?);
              debugPrint(error as String?);
            },
          ),
          !pdfReady
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : const Offstage()
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          currentPage > 0
              ? FloatingActionButton.extended(
                  backgroundColor: Colors.red,
                  label: Text('Go to ${currentPage - 1}'),
                  onPressed: () {
                    currentPage -= 1;
                    pdfViewController.setPage(currentPage);
                  },
                )
              : const Offstage(),
          currentPage < totalPages
              ? FloatingActionButton.extended(
                  backgroundColor: Colors.green,
                  label: Text('Go to ${currentPage + 1}'),
                  onPressed: () {
                    currentPage += 1;
                    pdfViewController.setPage(currentPage);
                  },
                )
              : const Offstage(),
        ],
      ),
    );
  }
}