import 'package:flutter/material.dart';
import 'package:flutter_location_search_app/Detail/detail_page.dart';

class HomePageListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return DetailPage();
          },),
        );
      },
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
                'title',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              Text(
                'category',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Text(
                'roadAddress',
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
