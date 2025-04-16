import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'components/app_view.dart';
import 'controller/image_controller.dart';
import './controller/app_controller.dart';

void main() {
  List<Map<String, dynamic>> cervejas = [
    {"id": "1547", "name": "La Fin Du Monde", "style": "Bock", "ibu": "65"},
    {"id": "0458", "name": "Sapporo Premium", "style": "Sour Ale", "ibu": "54"},
    {"id": "7894", "name": "Duvel", "style": "Pilsner", "ibu": "82"},
    {"id": "3535", "name": "Carlsberg", "style": "Lager", "ibu": "50"},
    {"id": "4548", "name": "Stella Artois", "style": "Lager", "ibu": "50"},
    {"id": "1978", "name": "Heineken", "style": "Lager", "ibu": "50"},
    {"id": "0147", "name": "Corona", "style": "Lager", "ibu": "50"},
  ];

  Map<String, dynamic> categorias = {
    "key0": "id",
    "key1": "name",
    "key2": "style",
    "key3": "ibu",
  };
  Map<String, dynamic> bottomNavigation = {
    "function1": {"icon": "home", "title": "Home"},
    "function2": {"icon": "filter", "title": "Filtrar"},
    "function3": {"icon": "list", "title": "Lista"},
  };

  Get.put(ImageController());
  Get.put(
    AppController(
      cervejas: cervejas,
      categorias: categorias,
      bottomNavigation: bottomNavigation,
    ),
  );
  AppView app = AppView();

  runApp(app);
}
