import 'package:app_beer/components/list_component.dart';
import 'package:app_beer/controller/app_request.dart';
import 'package:app_beer/controller/theme_controller.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'components/app_view.dart';
import './controller/app_controller.dart';

void main() async {
  Get.put(ThemeController());
  Get.put(MyListScroll());
  Get.put(AppRequest());
  final api = Get.find<AppRequest>();

  List<Map<String, dynamic>> cervejas = await api.getListBeers();
  Map<String, dynamic> categorias = {
    "key0": "id",
    "key1": "name",
    "key2": "style",
    "key3": "ibu",
  };
  Map<String, dynamic> bottomNavigation = {
    "function1": {"icon": "home", "title": "Home", "route": "/"},
    "function3": {"icon": "list", "title": "Lista", "route": "/list"},
  };

  Get.put(
    AppController(
      cervejas: cervejas,
      categorias: categorias,
      bottomNavigation: bottomNavigation,
    ),
  );

  runApp(const AppView());
}
