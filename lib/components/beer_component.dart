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
                    controller.categorias.values.map((value) {
                      return DataColumn(
                        label: Text(
                          "${value.toUpperCase()}",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      );
                    }).toList(),
                rows: [
                  DataRow(
                    cells:
                        (controller.cervejas[id]! as Map<String, dynamic>)
                            .values
                            .map<DataCell>((value) {
                              return DataCell(
                                Text(
                                  value,
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              );
                            })
                            .toList(),
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
    );
  }
}
