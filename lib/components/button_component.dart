import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_beer/interface/icons_interface.dart';

class BtnController extends GetxController {
  static BtnController get to => Get.find();
}

class BtnView extends StatelessWidget {
  final String title;
  final String icon;
  final Function onPress;

  const BtnView({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => onPress(),
      style: ButtonStyle(),
      label: Text(title),
      icon: icon == 'null' ? null : AppIcons.fromString(icon),
    );
  }
}
