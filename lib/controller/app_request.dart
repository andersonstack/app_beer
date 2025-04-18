import 'package:get/get.dart';

class AppRequest extends GetConnect {
  Future<List<Map<String, dynamic>>> getListBeers({int size = 5}) async {
    final response = await get(
      'https://random-data-api.com/api/beer/random_beer',
      query: {'size': '10'},
    );

    final data = response.body;
    return data.cast<Map<String, dynamic>>();
  }
}
