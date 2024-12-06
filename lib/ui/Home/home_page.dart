import 'package:flutter/material.dart';
import 'package:flutter_location_search_app/ui/Home/widgets/home_page_list_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextField(
            decoration: InputDecoration(
                hintText: '검색어를 입력해 주세요',
                border: MaterialStateOutlineInputBorder.resolveWith((states) {
                  if (states.contains(WidgetState.focused)) {
                    return OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black));
                  }
                  return OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey),
                  );
                })),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            HomePageListView(),
            HomePageListView(),
            HomePageListView(),
            HomePageListView(),
          ],
        )
      );
  }
}
