import 'package:app_beer/controller/infor_controller.dart';
import 'package:get/get.dart';
import "package:flutter/material.dart";

import 'package:app_beer/services/beer_request.dart';
import 'package:app_beer/controller/theme_controller.dart';
import 'package:app_beer/application/listBeer/beer_page.dart';
import 'package:app_beer/application/listBeer/list_page.dart';
import 'package:app_beer/application/listBeer/home_page.dart';
import 'package:app_beer/style/style.dart';
import 'package:app_beer/services/beer_controller.dart';
import 'package:app_beer/utils/maps.dart';

void main() {
  runApp(App());
}

// ignore: use_key_in_widget_constructors
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    Get.put(
      InforController(
        categorias: categorias,
        bottomNavigation: bottomNavigation,
      ),
    );
    Get.put(ThemeController());
    Get.put(AppRequest());
    Get.put(BeerController());

    return Obx(
      () => GetMaterialApp(
        initialRoute: '/',
        theme: Style.themeLight(screenHeight, screenWidth),
        darkTheme: Style.darkTheme(screenHeight, screenWidth),
        themeMode: Get.find<ThemeController>().currentTheme,
        getPages: [
          GetPage(name: '/', page: () => HomePage()),
          GetPage(name: '/list', page: () => ListPage()),
          GetPage(
            name: '/beer/:id',
            page: () {
              final String id = Get.parameters['id']!;
              return BeerPage(id: id);
            },
          ),
        ],
      ),
    );
  }
}
