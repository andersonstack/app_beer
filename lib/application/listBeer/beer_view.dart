import 'package:app_beer/components/button.dart';
import 'package:app_beer/components/navigationbar.dart';
import 'package:app_beer/controller/infor_controller.dart';
import 'package:app_beer/services/beer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BeerPage extends StatelessWidget {
  final String id;

  const BeerPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final BeerController controller = Get.find();
    final InforController infor = Get.find();
    final int index = controller.beers.indexWhere(
      (cerveja) => cerveja["id"].toString() == id,
    );
    final cervejas = controller.beers[index];

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
                    infor.categorias.values.map((chave) {
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
                        infor.categorias.values.map((chave) {
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
