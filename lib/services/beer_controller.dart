import 'package:get/get.dart';
import 'beer_request.dart';

class BeerController extends GetxController {
  var beers = <Map<String, dynamic>>[].obs;
  final AppRequest api = Get.find<AppRequest>();

  @override
  void onInit() {
    super.onInit();
    loadBeers();
  }

  void loadBeers() async {
    try {
      var result = await api.getListBeers();
      beers.assignAll(result);
    } catch (e) {
      print("Erro ao carregar cervejas: $e");
    }
  }
}
