import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/image_controller.dart';
import './button.dart';
import 'bottom_navigation.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    ImageController.to.init(Get.width, Get.height);
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
              onPress: () => Get.toNamed('/list'),
              icon: "null",
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigation(),
    );
  }
}
