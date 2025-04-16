import 'package:app_beer/controller/app_request.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'components/app_view.dart';
import 'controller/image_controller.dart';
import './controller/app_controller.dart';

void main() async {
  List<Map<String, dynamic>> cervejas = await AppRequest.getBeers();

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
