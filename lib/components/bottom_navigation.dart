import 'package:app_beer/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../interface/icons.dart';
import '../controller/navigationb_controller.dart';

class MyBottomNavigation extends StatelessWidget {
  const MyBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final MyBottomNavigationController btnCurrent = Get.put(
      MyBottomNavigationController(),
    );
    final AppController appController = Get.find();

    return Obx(
      () => BottomNavigationBar(
        currentIndex: btnCurrent.botaoSelecionado.value,
        onTap: (index) => btnCurrent.botaoSelecionado.value = index,
        items:
            appController.bottomNavigation.entries.map((entry) {
              final value = entry.value as Map<String, dynamic>;
              return BottomNavigationBarItem(
                icon: AppIcons.fromString(value["icon"]),
                label: value["title"],
              );
            }).toList(),
      ),
    );
  }
}
