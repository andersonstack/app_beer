import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'components/my_app.dart';
import 'controller/image_controller.dart';

void main() {
  List<Map<String, dynamic>> cervejas = [
    {"name": "La Fin Du Monde", "style": "Bock", "ibu": "65"},
    {"name": "Sapporo Premium", "style": "Sour Ale", "ibu": "54"},
    {"name": "Duvel", "style": "Pilsner", "ibu": "82"},
    {"name": "Carlsberg", "style": "Lager", "ibu": "50"},
    {"name": "Stella Artois", "style": "Lager", "ibu": "50"},
    {"name": "Heineken", "style": "Lager", "ibu": "50"},
    {"name": "Corona", "style": "Lager", "ibu": "50"},
    {"name": "Budweiser", "style": "Lager", "ibu": "50"},
    {"name": "Amstel", "style": "Lager", "ibu": "50"},
    {"name": "Carlsberg", "style": "Lager", "ibu": "50"},
    {"name": "Sapporo Premium", "style": "Lager", "ibu": "50"},
    {"name": "Stella Artois", "style": "Lager", "ibu": "50"},
    {"name": "Corona", "style": "Lager", "ibu": "50"},
  ];
  List<String> categorias = ["name", "style", "ibu"];
  Get.put(ImageController());
  Get.put(AppController(cervejas: cervejas, categorias: categorias));
  MyApp app = MyApp();

  runApp(app);
}

class AppController extends GetxController {
  final List<Map<String, dynamic>> cervejas;
  final List<String> categorias;

  AppController({required this.cervejas, required this.categorias});
}
