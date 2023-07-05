import 'package:flutter/material.dart';
import 'package:flutter_webview/application/application.dart';
import 'package:flutter_webview/utils/constants.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: listOffice.map((item) {
            return TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WebViewPage(path: '$path${item.ext}'),
                  ),
                );
              },
              child: Text(item.name),
            );
          }).toList(),
        ),
      ),
    );
  }
}
