import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/image_controller.dart';
import './button.dart';
import 'bottom_navigation.dart';

class HomeView extends StatelessWidget {
  final List<Map<String, dynamic>> cervejas;
  final List<String> categorias;
  final double screenWidth;
  final double screenHeight;

  const HomeView({
    super.key,
    required this.cervejas,
    required this.categorias,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    ImageController.to.init(screenWidth, screenHeight);
    ImageController.to.animate();

    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.surface),
      drawer: const Drawer(),
      body: Container(
        width: double.infinity,
        color: Theme.of(context).colorScheme.surfaceContainer,
        child: Column(
          spacing: 50,
          children: [
            GetX<ImageController>(
              builder:
                  (controller) => AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.linear,
                    width: controller.imageSize.value,
                    height: controller.imageSize.value,
                    child: Image.asset(
                      "assets/beer.png",
                      width: controller.imageSize.value,
                      height: controller.imageSize.value,
                      fit: BoxFit.contain,
                    ),
                  ),
            ),
            Text(
              "Descubra, avalie e registre suas cervejas favoritas em um só lugar!",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            BtnView(
              title: "Visualizar cervejas",
              // ignore: avoid_print
              onPress: () => print("fui clicado"),
              icon: "null",
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigation(
        bottomsNavigation: {
          "function1": {"icon": "home", "title": "Home"},
          "function2": {"icon": "filter", "title": "Filtrar"},
          "function3": {"icon": "list", "title": "Lista"},
        },
      ),
    );
  }
}
