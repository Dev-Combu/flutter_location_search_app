import 'package:flutter/material.dart';
import 'package:flutter_location_search_app/data/model/location.dart';
import 'package:html/parser.dart' as html;

class HomePageListView extends StatelessWidget {

  HomePageListView(this.location);
  Location location;

  //HTML TAG REMOVE
  String parseHtml(String htmlString) {
  var document = html.parse(htmlString);
  return document.body?.text ?? '';
}


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: 100,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(width: 0.5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                parseHtml(location.title),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              Text(
                location.category,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Text(
                location.roadAddress,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
