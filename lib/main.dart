import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'components/app_view.dart';
import 'controller/image_controller.dart';
import './controller/app_controller.dart';

void main() {
  Map<String, dynamic> cervejas = {
    "0001": {"name": "La Fin Du Monde", "style": "Bock", "ibu": "65"},
    "0002": {"name": "Sapporo Premium", "style": "Sour Ale", "ibu": "54"},
    "0003": {"name": "Duvel", "style": "Pilsner", "ibu": "82"},
    "0004": {"name": "Carlsberg", "style": "Lager", "ibu": "50"},
    "0005": {"name": "Stella Artois", "style": "Lager", "ibu": "50"},
    "0006": {"name": "Heineken", "style": "Lager", "ibu": "50"},
    "0007": {"name": "Corona", "style": "Lager", "ibu": "50"},
    "0008": {"name": "Budweiser", "style": "Lager", "ibu": "50"},
    "0009": {"name": "Amstel", "style": "Lager", "ibu": "50"},
    "0010": {"name": "Amstel", "style": "Lager", "ibu": "50"},
    "0011": {"name": "Carlsberg", "style": "Lager", "ibu": "50"},
    "0012": {"name": "Sapporo Premium", "style": "Lager", "ibu": "50"},
    "0013": {"name": "Stella Artois", "style": "Lager", "ibu": "50"},
    "0014": {"name": "Corona", "style": "Lager", "ibu": "50"},
  };

  Map<String, dynamic> categorias = {
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
