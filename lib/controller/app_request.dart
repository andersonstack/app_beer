import 'package:http/http.dart' as http;
import 'dart:convert';

class AppRequest {
  static Future<List<Map<String, dynamic>>> getBeers() async {
    var beersUri = Uri(
      scheme: 'https',
      host: 'random-data-api.com',
      path: 'api/beer/random_beer',
      queryParameters: {'size': '5'},
    );

    var jsonString = await http.read(beersUri);
    var beersJson = json.decode(jsonString) as List;
    return beersJson.cast<Map<String, dynamic>>();
  }
}
