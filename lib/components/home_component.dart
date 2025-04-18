import 'package:app_beer/controller/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import 'package:app_beer/components/button_component.dart';
import 'package:app_beer/components/navigationbar_component.dart';

class IconTheme extends GetxController {
  final Rx<IconData> typeIcon = Icons.light_mode.obs;

  void toggleIcon() {
    if (Get.find<ThemeController>().themeMode.value == ThemeMode.light) {
      typeIcon.value = Icons.light_mode;
    } else {
      typeIcon.value = Icons.dark_mode;
    }
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(IconTheme());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        leading: Obx(
          () => IconButton(
            onPressed: () {
              Get.find<ThemeController>().toggleTheme();
              Get.find<IconTheme>().toggleIcon();
            },
            icon: Icon(Get.find<IconTheme>().typeIcon.value),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        color: Theme.of(context).colorScheme.surfaceContainer,
        child: Column(
          spacing: 50,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                "Descubra, avalie e registre suas cervejas favoritas em um só lugar!",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            // BtnView(
            //   title: "Visualizar cervejas",
            //   // ignore: avoid_print
            //   onPress: () => Get.toNamed('/list'),
            //   icon: "null",
            // ),
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavigation(),
    );
  }
}
