import 'package:flutter/material.dart';
import '../interface/icons.dart';

class MyBottomNavigation extends StatelessWidget {
  final Map<String, dynamic> bottomsNavigation;

  const MyBottomNavigation({super.key, required this.bottomsNavigation});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items:
          bottomsNavigation.entries.map((entry) {
            final value = entry.value as Map<String, dynamic>;
            return BottomNavigationBarItem(
              icon: AppIcons.fromString(value["icon"]),
              label: value["title"],
            );
          }).toList(),
    );
  }
}
