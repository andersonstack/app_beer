import 'package:flutter/material.dart';
import '../style/style.dart';
import 'package:get/get.dart';

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
      theme: Style.theme(screenHeight, screenWidth),
      home: HomeView(
        cervejas: cervejas,
        categorias: categorias,
        screenWidth: screenWidth,
        screenHeight: screenHeight,
      ),
    );
  }
}
