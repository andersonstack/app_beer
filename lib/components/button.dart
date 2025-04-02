import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Botao extends GetxController {
  static Botao get to => Get.find();
}

class BotaoParametros {
  final String title;
  final String icon;
  Function onPress;

  BotaoParametros({
    required this.title,
    required this.icon,
    required this.onPress,
  });
}

class BotaoView extends StatelessWidget {
  final String title;
  final String icon;
  final Function? onPress;

  const BotaoView({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPress,
      style: Theme.of(context).textButtonTheme.style,
      child: Text(title),
    );
  }
}
