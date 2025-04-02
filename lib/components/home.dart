import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List<Map<String, dynamic>> cervejas;
  final List<String> categorias;
  const Home({super.key, required this.cervejas, required this.categorias});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red),
      drawer: Drawer(),
      body: Expanded(
        child: Container(
          width: double.infinity,
          color: Colors.blue,
          child: Column(
            children: [
              Text(
                "Descubra, avalie e registre suas cervejas favoritas em um só lugar! ",
              ),
              TextButton(
                onPressed: () => {},
                child: Text(
                  "Visualizar cervejas",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
