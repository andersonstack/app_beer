import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageController extends GetxController {
  var opacity = 0.0.obs;
  var imageSize = 300.0.obs;
  var topPosition = 250.0.obs;

  void animate() {
    Future.delayed(Duration(milliseconds: 500), () {
      opacity.value = 1.0;
      Future.delayed(Duration(seconds: 1), () {
        imageSize.value = 100.0;
        topPosition.value = 50.0;
      });
    });
  }
}

class HomeView extends StatelessWidget {
  final List<Map<String, dynamic>> cervejas;
  final List<String> categorias;
  const HomeView({super.key, required this.cervejas, required this.categorias});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ImageController());
    controller.animate();

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red),
      drawer: Drawer(),
      body: Expanded(
        child: Container(
          width: double.infinity,
          color: Colors.blue,
          child: Column(
            children: [
              Obx(
                () => Positioned(
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
                      child: Image.asset("assets/beer.png"),
                    ),
                  ),
                ),
              ),
              Text(
                "Descubra, avalie e registre suas cervejas favoritas em um só lugar! ",
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
