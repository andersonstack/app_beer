import 'package:app_beer/components/navigationbar.dart';
import 'package:app_beer/services/beer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_beer/controller/infor_controller.dart';

class ListPage extends GetView<InforController> {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final BeerController beerController = Get.find();
    var scrollController = ScrollController();

    scrollController.addListener(() {
      if (scrollController.position.pixels >=
          scrollController.position.maxScrollExtent - 50) {
        beerController.loadBeers();
      }
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
          Obx(
            () => Expanded(
              child: ListView.builder(
                controller: scrollController,
                itemCount: beerController.beers.length + 1,
                itemBuilder: (context, index) {
                  if (index < beerController.beers.length) {
                    final cerveja = beerController.beers[index];
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
                  } else {
                    // Loading no fim da lista
                    return Obx(() {
                      return beerController.isLoading.value
                          ? Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Center(child: CircularProgressIndicator()),
                          )
                          : const SizedBox.shrink();
                    });
                  }
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const MyBottomNavigation(),
    );
  }
}
