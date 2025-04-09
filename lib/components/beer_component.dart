import 'package:app_beer/controller/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Beer extends StatelessWidget {
  final String id;

  const Beer({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final AppController controller = Get.find();
    final beer = controller.cervejas[id]!;

    // ignore: avoid_print
    print("CERVEJA ${beer["name"]} ${beer["style"]} ${beer["ibu"]}");

    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: Center(
        child: Text("${beer["name"]} ${beer["style"]} ${beer["ibu"]}"),
      ),
    );
  }
}
