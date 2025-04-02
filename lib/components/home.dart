import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/image_controller.dart';

class HomeView extends StatelessWidget {
  final List<Map<String, dynamic>> cervejas;
  final List<String> categorias;
  // ignore: prefer_typing_uninitialized_variables
  final screenWidth;
  // ignore: prefer_typing_uninitialized_variables
  final screenHeight;

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
      drawer: Drawer(),
      body: Expanded(
        child: Container(
          width: double.infinity,
          color: Theme.of(context).colorScheme.surfaceContainer,
          child: Column(
            children: [
              GetX<ImageController>(
                builder:
                    (controller) => Positioned(
                      top: controller.topPosition.value,
                      left:
                          MediaQuery.of(context).size.width / 2 -
                          controller.imageSize.value / 2,
                      child: AnimatedOpacity(
                        opacity: controller.opacity.value,
                        duration: Duration(seconds: 2),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 2),
                          width: controller.imageSize.value,
                          height: controller.imageSize.value,
                          child: Image.asset(
                            "assets/beer.png",
                            width: controller.imageSize.value,
                            height: controller.imageSize.value,
                          ),
                        ),
                      ),
                    ),
              ),
              Text(
                "Descubra, avalie e registre suas cervejas favoritas em um só lugar! ",
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
      ),
    );
  }
}
