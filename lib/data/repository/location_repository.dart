import 'dart:convert';

import 'package:flutter_location_search_app/data/model/location.dart';
import 'package:http/http.dart';

class LocationRepository {
  Future<List<Location>> searchLocation(String query) async{
    final client = Client();
    final response = await client.get(
      Uri.parse('https://openapi.naver.com/v1/search/local.xml?query=$query'),
      headers: {
        'X-Naver-Client-Id': 'dsooJqA9gUF59YspqSKK',
        'X-Naver-Client-Secret': 'AG6SI3_SZr',
      }
    );

    if (response.statusCode ==200) {
      Map<String, dynamic> map = jsonDecode(response.body);
        final items = List.from(map['items']);
        final iterable = items.map((e) {
          return Location.fromJson(e);
        });

      final list =iterable.toList();
      return list;
    }

    return [];
  }
}