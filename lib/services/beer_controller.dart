import 'package:get/get.dart';
import 'beer_request.dart';

class BeerController extends GetxController {
  var beers = <Map<String, dynamic>>[].obs;
  final AppRequest api = Get.find<AppRequest>();
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadBeers();
  }

  void loadBeers() async {
    if (isLoading.value) return;

    isLoading.value = true;

    try {
      var result = await api.getListBeers(size: 10);
      beers.addAll(result);
    } catch (e) {
      // ignore: avoid_print
      print("Erro ao carregar cervejas: $e");
    } finally {
      isLoading.value = false;
    }
  }
}
