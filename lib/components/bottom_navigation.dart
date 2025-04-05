import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../interface/icons.dart';
import '../controller/navigationb_controller.dart';

class MyBottomNavigation extends StatelessWidget {
  final Map<String, dynamic> bottomsNavigation;

  const MyBottomNavigation({super.key, required this.bottomsNavigation});

  @override
  Widget build(BuildContext context) {
    final MyBottomNavigationController btnCurrent = Get.put(
      MyBottomNavigationController(),
    );

    return Obx(
      () => BottomNavigationBar(
        currentIndex: btnCurrent.botaoSelecionado.value,
        onTap: (index) => btnCurrent.botaoSelecionado.value = index,
        items:
            bottomsNavigation.entries.map((entry) {
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
