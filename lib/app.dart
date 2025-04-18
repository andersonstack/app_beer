import 'package:app_beer/components/beer_component.dart';
import 'package:app_beer/listBeer/list_beer_view.dart';
import 'package:app_beer/controller/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Classes
import 'package:app_beer/components/home_component.dart';
import 'style/style.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Obx(
      () => GetMaterialApp(
        initialRoute: '/',
        theme: Style.themeLight(screenHeight, screenWidth),
        darkTheme: Style.darkTheme(screenHeight, screenWidth),
        themeMode: Get.find<ThemeController>().currentTheme,
        getPages: [
          GetPage(name: '/', page: () => HomeView()),
          GetPage(name: '/list', page: () => ListBeer()),
          GetPage(
            name: '/beer/:id',
            page: () {
              final String id = Get.parameters['id']!;
              return Beer(id: id);
            },
          ),
        ],
      ),
    );
  }
}
