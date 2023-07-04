// import 'dart:developer' as dev;
import 'package:flutter/material.dart';
import 'package:flutter_webview/webview_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  String wordPath =
      'https://github.com/nta2005/sample_file/raw/master/FileTest.docx';

  String pptPath =
      'https://github.com/nta2005/sample_file/raw/master/FileTest.pptx';

  String excelPath =
      'https://github.com/nta2005/sample_file/raw/master/FileTest.xlsx';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WebViewPage(path: wordPath),
                  ),
                );
              },
              child: const Text('Word'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WebViewPage(path: pptPath),
                  ),
                );
              },
              child: const Text('PowerPoint'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WebViewPage(path: excelPath),
                  ),
                );
              },
              child: const Text('Excel'),
            ),
          ],
        ),
      ),
    );
  }
}
