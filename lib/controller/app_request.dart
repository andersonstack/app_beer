import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:get/get.dart';

class AppRequest extends GetConnect {
  // static Future<List<Map<String, dynamic>>> getBeers() async {
  //   var beersUri = Uri(
  //     scheme: 'https',
  //     host: 'random-data-api.com',
  //     path: 'api/beer/random_beer',
  //     queryParameters: {'size': '5'},
  //   );

  //   var jsonString = await http.read(beersUri);
  //   var beersJson = json.decode(jsonString) as List;
  //   return beersJson.cast<Map<String, dynamic>>();
  // }

  Future<List<Map<String, dynamic>>> getListBeers({int size = 5}) async {
    final response = await get(
      'https://random-data-api.com/api/beer/random_beer',
      query: {'size': '5'},
    );

    final data = response.body;
    return data.cast<Map<String, dynamic>>();
  }
}
