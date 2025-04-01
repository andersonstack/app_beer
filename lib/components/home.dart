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
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.blue,
              child: const Text("Aqui será a HOME"),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.amber,
              child: const Text("Aqui será a LISTA"),
            ),
          ),
        ],
      ),
    );
  }
}
