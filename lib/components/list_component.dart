import 'package:app_beer/components/navigationbar_component.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_beer/controller/app_controller.dart';

class MyListScroll extends GetxController {
  final scrollController = ScrollController();

  void _onScroll() {
    if (scrollController.position.atEdge) {
      bool isBottom =
          scrollController.position.pixels ==
          scrollController.position.maxScrollExtent;
      if (isBottom) {
        print("🚨 Chegamos ao fim da lista!");
        // Chame aqui o que quiser, como carregar mais itens
      }
    }
  }

  // Inicia o controlador
  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(_onScroll);
  }

  // Encerra o controlador
  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }
}

class ListBeer extends StatelessWidget {
  const ListBeer({super.key});
  @override
  Widget build(BuildContext context) {
    final AppController appController = Get.find();
    final controllerScroll = Get.find<MyListScroll>();

    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () => Get.toNamed("/"),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Pesquisar cerveja',
                labelStyle: Theme.of(context).textTheme.bodyLarge,
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              controller: controllerScroll.scrollController,
              itemCount: appController.cervejas.length,
              itemBuilder: (context, index) {
                final cerveja = appController.cervejas[index];

                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  child: ListTile(
                    title: Text(cerveja["name"]),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap:
                        () => Get.toNamed(
                          "/beer/${cerveja["id"]}",
                          arguments: cerveja,
                        ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const MyBottomNavigation(),
    );
  }
}
