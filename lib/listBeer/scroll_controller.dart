import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerScroll extends GetxController {
  final ScrollController scrollController = ScrollController();

  void _endScroll() {
    if (scrollController.position.atEdge) {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        print("🚨 Chegamos ao fim da lista!");
      }
    }
  }

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(_endScroll);
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }
}
