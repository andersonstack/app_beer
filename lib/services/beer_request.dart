import 'package:get/get.dart';

class AppRequest extends GetConnect {
  Future<List<Map<String, dynamic>>> getListBeers({int size = 10}) async {
    final response = await get(
      'https://random-data-api.com/api/beer/random_beer',
      query: {'size': '$size'},
    );

    if (response.isOk && response.body is List) {
      return (response.body as List).cast<Map<String, dynamic>>();
    } else {
      print("Erro da API: ${response.body}");
      return [];
    }
  }
}
