import 'package:flutter/material.dart';
import 'package:flutter_location_search_app/ui/Detail/detail_page.dart';
import 'package:flutter_location_search_app/ui/Home/widgets/home_page_list_view.dart';
import 'package:flutter_location_search_app/ui/Home/widgets/home_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  //검색 함수
  void onSearch(String text){
    ref.read(homeViewModelProvider.notifier).searchLocation(text);
    print('onSeach 호출됨');
  }

  @override
  Widget build(BuildContext context) {
    final homeState = ref.watch(homeViewModelProvider);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
            title: TextField(
              maxLines: 1,
              onSubmitted: onSearch, // 검색
              controller: textEditingController,
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
          body: ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: homeState.location.length,
              itemBuilder: (context, index) {
                final location = homeState.location[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(location),
                      ),
                    );
                  },
                  child: HomePageListView(location),
                );
              }),),
    );
  }
}
