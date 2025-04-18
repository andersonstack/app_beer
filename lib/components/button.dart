import 'package:app_beer/style/btn_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_beer/interface/icons.dart';

class BtnController extends GetxController {
  static BtnController get to => Get.find();
}

class BtnView extends StatelessWidget {
  final String title;
  final String icon;
  final Function onPress;
  final ButtonStyle? style;

  const BtnView({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.style,
  });

  factory BtnView.deleteStyle({
    Key? key,
    required String title,
    required VoidCallback onPress,
    required String icon,
  }) {
    return BtnView(
      key: key,
      title: title,
      icon: icon,
      onPress: onPress,
      style: BtnStyle.deleteStyle,
    );
  }

  factory BtnView.defaultStyle({
    Key? key,
    required String title,
    required VoidCallback onPress,
    required String icon,
  }) {
    return BtnView(
      key: key,
      title: title,
      icon: icon,
      onPress: onPress,
      style: BtnStyle.defaultStyle,
    );
  }

  factory BtnView.editStyle({
    Key? key,
    required String title,
    required VoidCallback onPress,
    required String icon,
  }) {
    return BtnView(
      key: key,
      title: title,
      icon: icon,
      onPress: onPress,
      style: BtnStyle.editStyle,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => onPress(),
      style: style ?? BtnStyle.defaultStyle,
      label: Text(title),
      icon: icon == 'null' ? null : AppIcons.fromString(icon),
    );
  }
}
 