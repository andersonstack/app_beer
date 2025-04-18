import 'package:app_beer/components/navigationbar_component.dart';
// import 'package:app_beer/listBeer/scroll_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_beer/controller/app_controller.dart';

class ListBeer extends GetView<AppController> {
  const ListBeer({super.key});

  void endScroll(ScrollController scrollController) {
    if (scrollController.position.atEdge) {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        // ignore: avoid_print
        print("🚨 Chegamos ao fim da lista!");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final AppController appController = Get.find();
    final ScrollController scrollController = ScrollController();

    // Adiciona listener DEPOIS que o widget for renderizado
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollController.addListener(() {
        endScroll(scrollController);
      });
    });

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
              controller: scrollController,
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
