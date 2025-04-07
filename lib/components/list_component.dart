import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_beer/controller/app_controller.dart';

class ListBeer extends StatelessWidget {
  const ListBeer({super.key});

  @override
  Widget build(BuildContext context) {
    final AppController appController = Get.find();

    return Scaffold(
      appBar: AppBar(title: const Text("Lista de Cervejas")),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Pesquisar cerveja',
                labelStyle: Theme.of(context).textTheme.bodyMedium,
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: appController.cervejas.length,
              itemBuilder: (context, index) {
                final key = appController.cervejas.keys.elementAt(index);
                final beer = appController.cervejas[key]!;
                // ignore: avoid_print
                print(
                  "CONTEXTO: $context, INDEX: $index, KEY: $key, BEER: $beer",
                );

                return Card(
                  key: Key(key),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  child: ListTile(
                    title: Text(
                      beer['name'],
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    subtitle: Text(
                      '${beer['style']} - IBU: ${beer['ibu']}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {},
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
