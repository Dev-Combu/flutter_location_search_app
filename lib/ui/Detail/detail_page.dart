import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_location_search_app/data/model/location.dart';
import 'package:html/parser.dart' as html;

class DetailPage extends StatelessWidget {


  DetailPage(this.location);
  Location location;


  //HTML TAG REMOVE
  String parseHtml(String htmlString) {
  var document = html.parse(htmlString);
  return document.body?.text ?? '';
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(parseHtml(location.title)),
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: WebUri(location.link),
        ),
        initialSettings: InAppWebViewSettings(
          userAgent:
          'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'
        ),
      )
    );
  }
}
