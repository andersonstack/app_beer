import 'package:get/get.dart';

class AppController extends GetxController {
  final Map<String, dynamic> cervejas;
  Map<String, dynamic> categorias;
  final Map<String, dynamic> bottomNavigation;

  AppController({
    required this.cervejas,
    required this.categorias,
    required this.bottomNavigation,
  });
}
