import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('detail'),
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
        ),
      ),
    );
  }
}
