import 'package:app_beer/components/button_component.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          spacing: 50,
          children: [
            SizedBox(
              width: double.infinity,
              child: DataTable(
                columns: [
                  DataColumn(label: Text("ID")),
                  DataColumn(label: Text("NOME")),
                  DataColumn(label: Text("STYLE")),
                  DataColumn(label: Text("IBU")),
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(Text(id)),
                      DataCell(Text(beer["name"])),
                      DataCell(Text(beer["style"])),
                      DataCell(Text(beer["ibu"])),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BtnView(title: "Editar", icon: "edit", onPress: () {}),
                BtnView(title: "Deletar", icon: "delete", onPress: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
