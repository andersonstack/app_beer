import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Classes
import 'package:app_beer/components/home.dart';
import './list_view.dart';
import '../style/style.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GetMaterialApp(
      initialRoute: '/',
      theme: Style.theme(screenHeight, screenWidth),
      getPages: [
        GetPage(name: '/', page: () => HomeView()),
        GetPage(name: '/list', page: () => ListBeer()),
      ],
    );
  }
}
