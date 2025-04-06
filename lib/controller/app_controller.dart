import 'package:get/get.dart';

class AppController extends GetxController {
  final List<Map<String, dynamic>> cervejas;
  final List<String> categorias;
  final Map<String, dynamic> bottomNavigation;

  AppController({
    required this.cervejas,
    required this.categorias,
    required this.bottomNavigation,
  });
}
