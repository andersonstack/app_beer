import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/image_controller.dart';

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
            TextButton(
              onPressed: () => {},
              child: Text(
                "Visualizar cervejas",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
