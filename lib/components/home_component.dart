import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:app_beer/components/button_component.dart';
import 'package:app_beer/components/navigationbar_component.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.surface),
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
            BtnView(
              title: "Visualizar cervejas",
              // ignore: avoid_print
              onPress: () => Get.toNamed('/list'),
              icon: "null",
            ),
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavigation(),
    );
  }
}
