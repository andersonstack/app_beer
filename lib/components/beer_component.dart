import 'package:app_beer/components/button_component.dart';
import 'package:app_beer/components/navigationbar_component.dart';
import 'package:app_beer/controller/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Beer extends StatelessWidget {
  final String id;

  const Beer({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final AppController controller = Get.find();
    final int index = controller.cervejas.indexWhere(
      (cerveja) => cerveja["id"].toString() == id,
    );
    final cervejas = controller.cervejas[index];

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
                columns:
                    controller.categorias.values.map((chave) {
                      return DataColumn(
                        label: Text(
                          "${chave.toUpperCase()}",
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      );
                    }).toList(),
                rows: [
                  DataRow(
                    cells:
                        controller.categorias.values.map((chave) {
                          return DataCell(
                            Text(
                              "${cervejas[chave]}",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          );
                        }).toList(),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BtnView.editStyle(
                  title: "Editar",
                  icon: "edit",
                  onPress: () {},
                ),
                BtnView.deleteStyle(
                  title: "Deletar",
                  icon: "delete",
                  onPress: () {},
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavigation(),
    );
  }
}
