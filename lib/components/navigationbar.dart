import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:app_beer/controller/infor_controller.dart';
import 'package:app_beer/interface/icons.dart';
import 'package:app_beer/controller/navigationbar_controller.dart';

class MyBottomNavigation extends StatelessWidget {
  const MyBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController btnCurrent = Get.put(NavigationController());
    final InforController appController = Get.find();

    return Obx(
      () => BottomNavigationBar(
        currentIndex: btnCurrent.botaoSelecionado.value,
        onTap: (index) => btnCurrent.changeIndex(index),
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
