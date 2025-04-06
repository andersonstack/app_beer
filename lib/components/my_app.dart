import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../style/style.dart';
import './list_view.dart';

// Classes
import 'package:app_beer/components/home.dart';

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> cervejas;
  final List<String> categorias;

  const MyApp({super.key, required this.cervejas, required this.categorias});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GetMaterialApp(
      initialRoute: '/',
      theme: Style.theme(screenHeight, screenWidth),
      getPages: [
        GetPage(
          name: '/',
          page:
              () => HomeView(
                cervejas: cervejas,
                categorias: categorias,
                screenWidth: screenWidth,
                screenHeight: screenHeight,
              ),
        ),
        GetPage(name: '/list', page: () => ListBeer()),
      ],
    );
  }
}
