import 'package:get/get.dart';

class MyBottomNavigationController extends GetxController {
  final botaoSelecionado = 0.obs;
  final List<String> routes = ['..', '/list'];

  void changeIndex(int index) {
    botaoSelecionado.value = index;
    Get.toNamed(routes[index]);
  }
}
